import Foundation
import os
import SQLite3

class BaseDAO {
    let logger: Logger
    let table: String
    let conn: OpaquePointer?
    let SQLITE_TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)

    init(conn: OpaquePointer?, table: String, loggerName: String) {
        self.conn = conn
        self.table = table
        logger = Logger(subsystem: Bundle.main.bundleIdentifier!, category: loggerName)
    }

    func logInsertAttempt(table: String, numRows: Int) {
//        if numRows == 1 {
//            logger.debug("Trying to insert \(numRows) row into the \(table, privacy: .public) table.")
//        } else {
//            logger.debug("Trying to insert \(numRows) rows into the \(table, privacy: .public) table.")
//        }
    }

    func logInsertSuccess(table: String, numRows: Int) {
        if numRows == 1 {
            logger.debug("Successfully inserted \(numRows) row into the \(table, privacy: .public) table.")
        } else {
            logger.debug("Successfully inserted \(numRows) rows into the \(table, privacy: .public) table.")

        }
    }

    func isNull(_ queryStatement: OpaquePointer?, _ colIndex: Int) -> Bool {
        sqlite3_column_type(queryStatement, Int32(colIndex)) == SQLITE_NULL
    }

    func getInt(stmt: OpaquePointer?, colIndex: Int) -> Int {
        Int(sqlite3_column_int(stmt, Int32(colIndex)))
    }

    func getDouble(stmt: OpaquePointer?, colIndex: Int) -> Double {
        Double(sqlite3_column_double(stmt, Int32(colIndex)))
    }

    func getDate(stmt: OpaquePointer?, colIndex: Int) throws -> Date {
        if let text = sqlite3_column_text(stmt, Int32(colIndex)) {
            let formatter = ISO8601DateFormatter()
            let dateString = String(cString: text)
            if let dt = formatter.date(from: dateString) {
                return dt
            } else {
                throw DbError.Db(message: "Unable to parse date from column index \(colIndex)")
            }
        }

        throw DbError.Db(message: "Unable to get date from column index \(colIndex)")
    }

    func getString(stmt: OpaquePointer?, colIndex: Int) throws -> String? {
        let colDataType = sqlite3_column_type(stmt, Int32(colIndex))

        if colDataType == SQLITE_TEXT {
            if let text = sqlite3_column_text(stmt, Int32(colIndex)) {
                return String(cString: text)
            } else {
                throw DbError.Db(message: "Unable to get text from column index \(colIndex).")
            }
        } else if colDataType == SQLITE_NULL {
            return nil
        }

        throw DbError.Db(message: "Unable to get text from column index \(colIndex).")
    }

    func attempt(stmt: inout OpaquePointer?, table: String, column: String, id: Int) throws {
        let sql = "SELECT * FROM \(table) where \(column) = ?"
        if sqlite3_prepare_v2(conn, sql, -1, &stmt, nil) == SQLITE_OK {
            // TODO Need to fix the truncation of the Int id
            guard sqlite3_bind_int(stmt, 1, Int32(id)) == SQLITE_OK else {
                throw DbError.Db(message: "Unable to get rows")
            }
        } else {
            let sqliteMsg = String(cString: sqlite3_errmsg(conn)!)
            sqlite3_finalize(stmt)

            var errMsg = "Failed to prepare the statement \"" + sql + "\".  "
            errMsg += "SQLite error message: " + sqliteMsg
            throw DbError.Db(message: errMsg)
        }
    }
    
    func exists(sql: String) throws -> Bool {
        logger.debug("Executing query '\(sql)'")

        var stmt: OpaquePointer?
        if sqlite3_prepare_v2(conn, sql, -1, &stmt, nil) == SQLITE_OK {
            if sqlite3_step(stmt) == SQLITE_ROW {
                return true
            }
        } else {
            let sqliteMsg = String(cString: sqlite3_errmsg(conn)!)
            sqlite3_finalize(stmt)

            var errMsg = "Failed to prepare the statement \"" + sql + "\".  "
            errMsg += "SQLite error message: " + sqliteMsg
            throw DbError.Db(message: errMsg)
        }

        return false
    }

    func exists(table: String, idName: String, id: Int) throws -> Bool {
        let sql = "SELECT EXISTS(SELECT 1 FROM \(table) WHERE \(idName) = ? LIMIT 1)"
        let strSql = "SELECT EXISTS(SELECT 1 FROM \(table) WHERE \(idName) = \(id) LIMIT 1)"
        logger.debug("Executing query '\(strSql)'")

        var stmt: OpaquePointer?
        if sqlite3_prepare_v2(conn, sql, -1, &stmt, nil) == SQLITE_OK {
            // TODO Need to fix the truncation of the Int id
            guard sqlite3_bind_int(stmt, 1, Int32(id)) == SQLITE_OK else {
                throw DbError.Db(message: String(cString: sqlite3_errmsg(conn)!))
            }
        } else {
            let sqliteMsg = String(cString: sqlite3_errmsg(conn)!)
            sqlite3_finalize(stmt)

            var errMsg = "Failed to prepare the statement \"" + sql + "\".  "
            errMsg += "SQLite error message: " + sqliteMsg
            throw DbError.Db(message: errMsg)
        }

        if sqlite3_step(stmt) == SQLITE_ROW {
            let result = getInt(stmt: stmt, colIndex: 0)
            return result == 1 ? true : false
        }

        return false
    }

    func getRowById(stmt: inout OpaquePointer?, table: String, idName: String, id: Int) throws {
        let sql = "SELECT * FROM \(table) where \(idName) = ?"

        logger.debug("Executing query 'SELECT * FROM \(table) where \(idName) = \(id)'")

        if sqlite3_prepare_v2(conn, sql, -1, &stmt, nil) == SQLITE_OK {
            // TODO Need to fix the truncation of the Int id
            guard sqlite3_bind_int(stmt, 1, Int32(id)) == SQLITE_OK else {
                throw DbError.Db(message: "Unable to bind")
            }
        } else {
            let sqliteMsg = String(cString: sqlite3_errmsg(conn)!)
            sqlite3_finalize(stmt)

            var errMsg = "Failed to prepare the statement \"" + sql + "\".  "
            errMsg += "SQLite error message: " + sqliteMsg
            throw DbError.Db(message: errMsg)
        }

        if sqlite3_step(stmt) != SQLITE_ROW {
            throw DbError.Db(message: "Row does not exist.")
        }
    }

    func executeInsert(table: String, numRows: Int, sql: String) throws {
        if numRows <= 0 {
            logger.debug("Zero rows to insert into the \(table, privacy: .public) table.")
            return
        }

        logInsertAttempt(table: table, numRows: numRows)
        try executeNonQuery(sql: sql)
        logInsertSuccess(table: table, numRows: numRows)
    }

    func executeNonQuery(sql: String) throws {
        var stmt: OpaquePointer?

        if sqlite3_prepare_v2(conn, sql, -1, &stmt, nil) == SQLITE_OK {
            if sqlite3_step(stmt) == SQLITE_DONE {
                sqlite3_finalize(stmt)
                return
            } else {
                let errMsg = String(cString: sqlite3_errmsg(conn)!)
                sqlite3_finalize(stmt)
                throw SQLiteError.Step(message: errMsg)
            }
        } else {
            let errMsg = String(cString: sqlite3_errmsg(conn)!)
            sqlite3_finalize(stmt)
            throw SQLiteError.Prepare(message: errMsg)
        }
    }

    fileprivate func insertOneRow(sql: String) throws -> Int {
        var insertStmt: OpaquePointer?
        if sqlite3_prepare_v2(conn, sql, -1, &insertStmt, nil) == SQLITE_OK {
            if sqlite3_step(insertStmt) == SQLITE_DONE {
                sqlite3_finalize(insertStmt)
            } else {
                let errMsg = String(cString: sqlite3_errmsg(conn)!)
                sqlite3_finalize(insertStmt)

                throw SQLiteError.Step(message: errMsg)
            }
        } else {
            let errMsg = String(cString: sqlite3_errmsg(conn)!)
            sqlite3_finalize(insertStmt)

            throw SQLiteError.Prepare(message: errMsg)
        }

        var rowId = -1
        var rowIdStmt: OpaquePointer?
        let rowIdSql = "SELECT last_insert_rowid()"
        if sqlite3_prepare_v2(conn, rowIdSql, -1, &rowIdStmt, nil) == SQLITE_OK {
            if sqlite3_step(rowIdStmt) == SQLITE_ROW {
                rowId = getInt(stmt: rowIdStmt, colIndex: 0)
                sqlite3_finalize(rowIdStmt)

            } else {
                let errMsg = String(cString: sqlite3_errmsg(conn)!)
                sqlite3_finalize(rowIdStmt)

                throw SQLiteError.Step(message: errMsg)
            }
        } else {
            let errMsg = String(cString: sqlite3_errmsg(conn)!)
            sqlite3_finalize(rowIdStmt)

            throw SQLiteError.Prepare(message: errMsg)
        }

        return rowId
    }

    func deleteAll() throws {
        let sql = "DELETE FROM \(table)"
        var stmt: OpaquePointer?
        if sqlite3_prepare_v2(conn, sql, -1, &stmt, nil) == SQLITE_OK {
            if sqlite3_step(stmt) == SQLITE_DONE {
                logger.debug("Deleted all rows from the \(self.table) table.")
            } else {
                logger.error("Unable to delete all rows from the \(self.table) table.")
            }
        } else {
            let sqliteMsg = String(cString: sqlite3_errmsg(conn)!)
            sqlite3_finalize(stmt)

            var errMsg = "Failed to prepare the statement \"" + sql + "\".  "
            errMsg += "SQLite error message: " + sqliteMsg
            throw DbError.Db(message: errMsg)
        }

        sqlite3_finalize(stmt)
    }

    func countAll() throws -> Int {
        let sql = "SELECT count(*) FROM \(table)"
        var stmt: OpaquePointer?

        if sqlite3_prepare_v2(conn, sql, -1, &stmt, nil) == SQLITE_OK {
            if sqlite3_step(stmt) == SQLITE_ROW {
                let count = getInt(stmt: stmt, colIndex: 0)
                sqlite3_finalize(stmt)

                return count
            } else {
                let sqliteMsg = String(cString: sqlite3_errmsg(conn)!)
                sqlite3_finalize(stmt)

                var errMsg = "Failed to prepare the statement \"" + sql + "\".  "
                errMsg += "SQLite error message: " + sqliteMsg
                throw DbError.Db(message: errMsg)
            }
        } else {
            let sqliteMsg = String(cString: sqlite3_errmsg(conn)!)
            sqlite3_finalize(stmt)

            var errMsg = "Failed to prepare the statement \"" + sql + "\".  "
            errMsg += "SQLite error message: " + sqliteMsg
            throw DbError.Db(message: errMsg)
        }
    }

    func getCleanedSql(_ sql: String) -> String {
        var cleaned = sql.trimmingCharacters(in: .whitespacesAndNewlines)
        cleaned.removeLast()
        cleaned += ";"

        return cleaned
    }

    func getSql(val: Date?, postfix: String) -> String {
        if let dateVal = val {
            let strDate = ISO8601DateFormatter().string(from: dateVal)
            return "\"" + strDate + "\"" + postfix
        } else {
            return "NULL" + postfix
        }
    }

    func getSql(val: Int?, postfix: String) -> String {
        if let intVal = val {
            return String(intVal) + postfix
        } else {
            return "NULL" + postfix
        }
    }

    func getSql(val: Float?, postfix: String) -> String {
        if let floatVal = val {
            return String(floatVal) + postfix
        } else {
            return "NULL" + postfix
        }
    }

    func getSql(val: Bool?, postfix: String) -> String {
        if let boolVal = val {
            return boolVal ? "TRUE" + postfix : "FALSE" + postfix
        } else {
            return "NULL" + postfix
        }
    }

    func getSql(val: String?, postfix: String) -> String {
        if let stringVal = val {
            //TODO Fix replacement of double quotes in string value
            let newVal = stringVal.replacingOccurrences(
                    of: "\"",
                    with: "",
                    options: .literal, range: nil)

            return "\"" + newVal + "\"" + postfix
        } else {
            return "NULL" + postfix
        }
    }

    func getUpdateSql(column: String, val: Date?, postfix: String) -> String {
        if let dateVal = val {
            let strDate = ISO8601DateFormatter().string(from: dateVal)
            return "\(column) = \"" + strDate + "\"" + postfix
        } else {
            return "\(column) = NULL" + postfix
        }
    }

    func getUpdateSql(column: String, val: Int?, postfix: String) -> String {
        if let intVal = val {
            return "\(column) = " + String(intVal) + postfix
        } else {
            return "\(column) = NULL" + postfix
        }
    }

    func getUpdateSql(column: String, val: Float?, postfix: String) -> String {
        if let floatVal = val {
            return "\(column) = " + String(floatVal) + postfix
        } else {
            return "\(column) = NULL" + postfix
        }
    }

    func getUpdateSql(column: String, val: Bool?, postfix: String) -> String {
        if let boolVal = val {
            if boolVal {
                return "\(column) = TRUE" + postfix
            } else {
                return "\(column) = FALSE" + postfix
            }
        } else {
            return "\(column) = NULL" + postfix
        }
    }

    func getUpdateSql(column: String, val: String?, postfix: String) -> String {
        if let stringVal = val {
            // TODO Fix replacement of double quotes in string value
            let newVal = stringVal.replacingOccurrences(
                    of: "\"",
                    with: "",
                    options: .literal, range: nil)

            return "\(column) = \"" + newVal + "\"" + postfix
        } else {
            return "\(column) = NULL" + postfix
        }
    }
}
