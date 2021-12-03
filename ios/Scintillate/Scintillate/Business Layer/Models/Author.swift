import Foundation

struct Author: Equatable, Hashable {
    let id: Int
    let firstName: String
    let middleName: String?
    let lastName: String
    
    func getName() -> String {
        if let middleName = middleName {
            return firstName + " " + middleName + " " + lastName
        }
        
        return firstName + " " + lastName
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
