import Foundation
import os

class UserViewModel: ObservableObject {
    @Published var user: User
    @Published var workList: WorkList

    init(user: User, workList: WorkList) {
        self.user = user
        self.workList = workList
    }
    
    func setReadStatus(workStat: WorkStat) {
        user.setReadStatus(workStat: workStat)
    }
    
    func getScore() -> Int {
        return user.getScore()
    }
    
    func updateWorkStat(_ workStat: WorkStat) {
        user.setReadStatus(workStat: workStat)
    }
}
