import Foundation

struct User: Equatable, Hashable {
    let id: Int
    let username: String?
    let firstName: String?
    let lastName: String?
    let email: String?
    let workStats: [WorkStat]
    
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
    
    func getOwnStatus(work: Work) -> OwnStatus {
        for workStat in workStats {
            if workStat.work.id == work.id {
                return workStat.ownStatus
            }
        }
        
        return OwnStatus.doNotOwn
    }
    
    func getReadStatus(work: Work) -> ReadStatus {
        for workStat in workStats {
            if workStat.work.id == work.id {
                return workStat.readStatus
            }
        }
        
        return ReadStatus.notRead
    }
    
    func getReadCount(readStatus: ReadStatus) -> Int {
        var count = 0
        
        for workStat in workStats {
            if workStat.readStatus == readStatus {
                count += 1
            }
        }
        
        return count
    }
    
    func getOwnCount(ownStatus: OwnStatus) -> Int {
        var count = 0
        
        for workStat in workStats {
            if workStat.ownStatus == ownStatus {
                count += 1
            }
        }
        
        return count
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
