import Foundation
import os

class UserViewModel: ObservableObject {
    @Published var user: User
    @Published var workList: WorkList
    
    var firstName: String? {
        user.firstName
    }

    let logger = Logger(subsystem: Bundle.main.bundleIdentifier!, category: "main")
    
    init(user: User, workList: WorkList) {
        self.user = user
        self.workList = workList
    }
    
    func setId(_ id: Int) {
        user.id = id
    }
    
    func setReadStatus(workStat: WorkStat) {
        user.setReadStatus(workStat: workStat)
    }
    
    func getScore() -> Int {
        return user.getScore()
    }
    
    func updateName(_ name: String) {
        user.firstName = name
    }
    
    func updateWorkStat(_ workStat: WorkStat) {
        for var existingWorkStat in user.workStats {
            if existingWorkStat.id == workStat.id {
                existingWorkStat.readStatus = workStat.readStatus
            }
        }
//        user.firstName = "Timothy " + String(user.workStats.count)
        user.workStats.append(WorkStat(id: 1000 + user.workStats.count,
                                       work: workStat.work,
                                       readStatus: ReadStatus.read,
                                       ownStatus: OwnStatus.doNotOwn))

    }
    
    var userScore: Double {
        1000.0 * userScorePercent
    }
    
    var userScorePercent: Double {
        if workList.getTotalScore() > 0 {
            return Double(user.getScore()) / Double(workList.getTotalScore())
        }
        
        return 0.0
    }
    
    var userScoreText: String {
        String(format: "%.2f", userScore)
    }
    
    func getScoreWidth(totalWidth: Double) -> Double {
        return userScorePercent * totalWidth
    }
}
