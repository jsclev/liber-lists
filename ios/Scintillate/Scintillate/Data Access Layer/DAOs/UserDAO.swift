import Foundation
import SQLite3

class UserDAO: BaseDAO {
    init(conn: OpaquePointer?) {
        super.init(conn: conn, table: "user", loggerName: String(describing: type(of: self)))
    }

    func getCurrentUser() -> User {
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

        return User(id: userId, username: username, firstName: firstName, lastName: lastName, email: email)
    }
}
