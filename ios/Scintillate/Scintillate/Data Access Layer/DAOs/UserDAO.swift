import Foundation
import SQLite3

class UserDAO: BaseDAO {
    init(conn: OpaquePointer?) {
        super.init(conn: conn, table: "user", loggerName: String(describing: type(of: self)))
    }

    func getCurrentUser() -> User {
        var workStats = [WorkStat]()

        var statStmt: OpaquePointer?
        let statSql = """
            SELECT
                uws.id,
                uws.work_id,
                uws.read_status,
                uws.own_status,
                w.title
            FROM
                user_work_stat uws
            INNER JOIN
                work w on w.id = uws.work_id
            WHERE
                uws.user_id = 1
            ORDER BY
                uws.work_id
        """

        do {
            if sqlite3_prepare_v2(conn, statSql, -1, &statStmt, nil) == SQLITE_OK {
                
                while sqlite3_step(statStmt) == SQLITE_ROW {
                    let statId = getInt(stmt: statStmt, colIndex: 0)
                    let workId = getInt(stmt: statStmt, colIndex: 1)
                    let dbReadStatus = getInt(stmt: statStmt, colIndex: 2)
                    let dbOwnStatus = getInt(stmt: statStmt, colIndex: 3)
                    
                    var readStatus = ReadStatus.notRead
                    var ownStatus = OwnStatus.doNotOwn
                    
                    switch dbReadStatus {
                        case 0:
                            readStatus = ReadStatus.notRead
                        case 1:
                            readStatus = ReadStatus.wantToRead
                        case 2:
                            readStatus = ReadStatus.currentlyReading
                        case 3:
                            readStatus = ReadStatus.read
                        default:
                            readStatus = ReadStatus.notRead
                    }
                    
                    switch dbOwnStatus {
                        case 0:
                            ownStatus = OwnStatus.doNotOwn
                        case 1:
                            ownStatus = OwnStatus.wantToOwn
                        case 2:
                            ownStatus = OwnStatus.owned
                        default:
                            ownStatus = OwnStatus.doNotOwn
                    }
                    
                    if let workTitle = try getString(stmt: statStmt, colIndex: 4) {
                        let work = Work(id: workId,
                                        title: workTitle,
                                        imageName: "",
                                        authors: [],
                                        awards: [])
                        
                        let workStat = WorkStat(id: statId,
                                                work: work,
                                                readStatus: readStatus,
                                                ownStatus: ownStatus)
                        workStats.append(workStat)
                    }
                }
            }
        }
        catch {
            print(error)
        }
        
        var stmt: OpaquePointer?
        var userId = 0
        var username: String?
        var email: String?
        var firstName: String?
        var lastName: String?
        
        do {
            try getRowById(stmt: &stmt, table: table, idName: "id", id: 1)
            
            userId = getInt(stmt: stmt, colIndex: 0)
            username = try getString(stmt: stmt, colIndex: 1)
            email = try getString(stmt: stmt, colIndex: 2)
            firstName = try getString(stmt: stmt, colIndex: 3)
            lastName = try getString(stmt: stmt, colIndex: 4)
        }
        catch {
            print(error)
        }
        
        sqlite3_finalize(stmt)

        return User(id: userId,
                    username: username,
                    firstName: firstName,
                    lastName: lastName,
                    email: email,
                    workStats: workStats)
    }
    
    func upsertWorkReadStatus(user: User, work: Work, readStatus: ReadStatus) -> WorkStat {
        let sqlExists = "SELECT * FROM user_work_stat " +
            "WHERE user_id = \(user.id) AND work_id = \(work.id);"
        
        do {
            if try exists(sql: sqlExists) {
                var readStatusNum = 0
                if readStatus == ReadStatus.notRead {
                    readStatusNum = 0
                }
                else if readStatus == ReadStatus.wantToRead {
                    readStatusNum = 1
                }
                else if readStatus == ReadStatus.currentlyReading {
                    readStatusNum = 2
                }
                else if readStatus == ReadStatus.read {
                    readStatusNum = 3
                }
                
                let sql = "UPDATE user_work_stat " +
                    "SET read_status = \(readStatusNum) " +
                    "WHERE user_id = \(user.id) AND work_id = \(work.id);"

                try executeNonQuery(sql: sql)
            }
            else {
                let sql = "INSERT INTO user_work_stat " +
                    "(user_id, work_id, read_status, own_status, own_status_type) " +
                    "VALUES " +
                    "(\(user.id) , \(work.id), 3, 0, NULL);"

                try executeNonQuery(sql: sql)
            }
        }
        catch {
            print("An error occurred")
        }
        
        if let workStat = getWorkStat(user: user, work: work) {
            return workStat
        }
        else {
            return WorkStat(id: -1,
                            work: work,
                            readStatus: ReadStatus.read,
                            ownStatus: OwnStatus.doNotOwn)
        }
    }
    
    func getWorkStat(user: User, work: Work) -> WorkStat? {
        let sql = "SELECT id, user_id, work_id, read_status, own_status, own_status_type " +
            "FROM user_work_stat " +
            "WHERE user_id = \(user.id) AND work_id = \(work.id);"
        
        var stmt: OpaquePointer?

        if sqlite3_prepare_v2(conn, sql, -1, &stmt, nil) == SQLITE_OK {
            if sqlite3_step(stmt) == SQLITE_ROW {
                let id = getInt(stmt: stmt, colIndex: 0)
                let userId = getInt(stmt: stmt, colIndex: 1)
                let workId = getInt(stmt: stmt, colIndex: 2)
                let readStatusNum = getInt(stmt: stmt, colIndex: 3)
                let ownStatusNum = getInt(stmt: stmt, colIndex: 4)
                let ownStatusType = getInt(stmt: stmt, colIndex: 5)
                
                var readStatus = ReadStatus.notRead
                if readStatusNum == 0 {
                    readStatus = ReadStatus.notRead
                }
                else if readStatusNum == 1 {
                    readStatus = ReadStatus.wantToRead
                }
                else if readStatusNum == 2 {
                    readStatus = ReadStatus.currentlyReading
                }
                else if readStatusNum == 3 {
                    readStatus = ReadStatus.read
                }
                
                let ownStatus = OwnStatus.doNotOwn

                let workStat = WorkStat(id: id,
                                        work: work,
                                        readStatus: readStatus,
                                        ownStatus: ownStatus)
                return workStat

            }
        } else {
            let errMsg = String(cString: sqlite3_errmsg(conn)!)
            sqlite3_finalize(stmt)
//            throw SQLiteError.Step(message: errMsg)
        }

        return nil
    }
}
