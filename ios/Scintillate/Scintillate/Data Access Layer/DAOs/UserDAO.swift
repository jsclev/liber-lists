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
}
