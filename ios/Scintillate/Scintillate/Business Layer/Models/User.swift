import Foundation

struct User: Equatable, Hashable {
    let id: Int
    let username: String?
    let firstName: String?
    let lastName: String?
    let email: String?
    
    func getName() -> String {
        var name = "None"
        
        if let myFirstName = firstName,
           let myLastName = lastName {
            name = myFirstName + " " + myLastName
        }
        
        return name
    }
    
    func getEmail() -> String {
        if let myEmail = email {
            return myEmail
        }
        
        return "None"
    }
    
    func getUsername() -> String {
        if let myUsername = username {
            return myUsername
        }
        
        return "None"
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
