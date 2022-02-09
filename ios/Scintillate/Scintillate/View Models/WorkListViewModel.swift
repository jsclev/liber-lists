import Foundation
import os

class WorkListViewModel: ObservableObject {
    @Published var workList: WorkList

    let logger = Logger(subsystem: Bundle.main.bundleIdentifier!, category: "main")
    
    init(_ workList: WorkList) {
        self.workList = workList
    }
    
    func getTotalScore() -> Int {
        return workList.getTotalScore()
    }
}
