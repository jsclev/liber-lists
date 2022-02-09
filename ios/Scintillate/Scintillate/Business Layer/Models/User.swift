import Foundation

struct User: Equatable, Hashable {
    var id: Int
    let username: String?
    var firstName: String?
    let lastName: String?
    let email: String?
    var workStats: [WorkStat]
    
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
    
    mutating func setReadStatus(workStat: WorkStat) {
//        self.workStats = []
//        for var existingWorkStat in workStats {
//            if existingWorkStat.id == workStat.id {
//                print("Modifying workStat " + String(workStat.id))
//                existingWorkStat.setReadStatus(workStat.readStatus)
//                return
//            }
//        }
        
        for index in 0..<workStats.count {
            if workStats[index].id == workStat.id {
                workStats.remove(at: index)
                break
            }
        }

        
        self.workStats.append(workStat)
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
    
    func getWorkStat(work: Work) -> WorkStat {
        for workStat in workStats {
            if workStat.work.id == work.id {
                return workStat
            }
        }
        
        return WorkStat(id: -1,
                        work: work,
                        readStatus: ReadStatus.notRead,
                        ownStatus: OwnStatus.doNotOwn)
    }
    
    func getScore() -> Int {
        var score = 0
        
        for workStat in workStats {
            if workStat.id == 2 {
                if workStat.readStatus == ReadStatus.read {
                    print("workStat is read")
                }
                else if workStat.readStatus == ReadStatus.notRead {
                    print("workStat is not read")
                }
            }
            if workStat.readStatus == ReadStatus.read {
                score += 5
            }
            else if workStat.readStatus == ReadStatus.currentlyReading {
                score += 2
            }
            
            if workStat.ownStatus == OwnStatus.owned {
                score += 1
            }
        }
        
        print("Calling getScore(): " + String(score))
        
        return score
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
