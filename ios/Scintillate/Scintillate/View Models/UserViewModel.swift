import Foundation
import os

class UserViewModel: ObservableObject {
    @Published var user: User

    let logger = Logger(subsystem: Bundle.main.bundleIdentifier!, category: "main")
    
    init(_ user: User) {
        self.user = user
    }
    
    func setId(_ id: Int) {
        user.id = id
    }
    
    func setReadStatus(workStat: WorkStat) {
        user.setReadStatus(workStat: workStat)
    }
}
