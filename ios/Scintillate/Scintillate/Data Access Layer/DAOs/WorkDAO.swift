import Foundation
import SQLite3

class WorkDAO: BaseDAO {
    init(conn: OpaquePointer?) {
        super.init(conn: conn, table: "work", loggerName: String(describing: type(of: self)))
    }

//    func get(id: Int) throws -> WorkViewModel {
//        var stmt: OpaquePointer?
//        try getRowById(stmt: &stmt, table: table, idName: "id", id: id)
//
//        if let firstName = try getString(stmt: stmt, colIndex: 5),
//           let lastName = try getString(stmt: stmt, colIndex: 7) {
//            let person = Person(
//                    personId: getInt(stmt: stmt, colIndex: 0),
//                    updatedAt: try getDate(stmt: stmt, colIndex: 2),
//                    syncedAt: try getDate(stmt: stmt, colIndex: 3),
//                    firstName: firstName,
//                    middleName: try getString(stmt: stmt, colIndex: 6),
//                    lastName: lastName,
//                    title: try getString(stmt: stmt, colIndex: 22))
//
//            sqlite3_finalize(stmt)
//
//            return person
//        }
//
//        throw DbError.Db(message: "Could not find work by id.")
//    }

//    func insert(account: AccountDTO, people: [PersonDTO]) throws {
//        if people.count == 0 {
//            logger.debug("Zero people to insert into the person table.")
//            return
//        }
//
//        var sql = """
//                  INSERT INTO person (
//                      person_id,
//                      account_id,
//                      updated_at,
//                      synced_at,
//                      party_id,
//                      first_name,
//                      middle_name,
//                      last_name,
//                      title,
//                      gender_id
//                  ) VALUES
//                  """
//
//        for person in people {
//            var genderId: Int? = nil
//            if let gender = person.gender {
//                genderId = gender.genderId
//            }
//
//            sql += "("
//            sql += getSql(val: person.personId, postfix: ", ")
//            sql += getSql(val: account.accountId, postfix: ", ")
//            sql += getSql(val: Date(), postfix: ", ")
//            sql += getSql(val: Date(), postfix: ", ")
//            sql += getSql(val: person.party.partyId, postfix: ", ")
//            sql += getSql(val: person.firstName, postfix: ", ")
//            sql += getSql(val: person.middleName, postfix: ", ")
//            sql += getSql(val: person.lastName, postfix: ", ")
//            sql += getSql(val: person.title, postfix: ", ")
//            sql += getSql(val: genderId, postfix: "")
//            sql += "), "
//        }
//
//        sql = getCleanedSql(sql)
//
//        do {
//            try executeInsert(table: table, numRows: people.count, sql: sql)
//        }
//        catch SQLiteError.Prepare(let message) {
//            var errMsg = "Failed to compile the SQL to insert rows into the person table.  "
//            errMsg += "SQLite error message: " + message
//            throw DbError.Db(message: errMsg)
//        }
//        catch SQLiteError.Step(let message) {
//            var errMsg = "Failed to execute the SQL to insert rows into the person table.  "
//            errMsg += "SQLite error message: " + message
//            throw DbError.Db(message: errMsg)
//        }
//    }

//    func updatePerson(account: Account, person: PersonDTO) throws {
//        var sql = "UPDATE person SET "
//
//        sql += getUpdateSql(column: "updated_at", val: Date(), postfix: ", ")
//        sql += getUpdateSql(column: "synced_at", val: Date(), postfix: ", ")
//        sql += getUpdateSql(column: "first_name", val: person.firstName, postfix: ", ")
//        sql += getUpdateSql(column: "middle_name", val: person.middleName, postfix: ", ")
//        sql += getUpdateSql(column: "last_name", val: person.lastName, postfix: ", ")
//        sql += getUpdateSql(column: "title", val: person.title, postfix: ", ")
//        sql += getUpdateSql(column: "gender_id", val: person.gender?.genderId, postfix: " ")
//        sql += "WHERE person_id = \(person.personId) AND account_id = \(account.accountId);"
//
//        do {
//            try executeNonQuery(sql: sql)
//        }
//        catch SQLiteError.Prepare(let message) {
//            var errMsg = "Failed to compile the SQL to update person.  "
//            errMsg += "SQLite error message: " + message
//            throw DbError.Db(message: errMsg)
//        }
//        catch SQLiteError.Step(let message) {
//            var errMsg = "Failed to update a row in the person table.  "
//            errMsg += "SQLite error message: " + message
//            throw DbError.Db(message: errMsg)
//        }
//    }

    func getAll() -> [Work] {
        let work1 = Work(id: 1, title: "Dune")
        let work2 = Work(id: 2, title: "Hyperion")
        
        return [work1, work2]
    }
}
