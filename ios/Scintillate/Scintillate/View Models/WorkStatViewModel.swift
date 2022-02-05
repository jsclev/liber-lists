import Foundation
import os

class WorkStatViewModel: ObservableObject {
    @Published var workStat: WorkStat

    let logger = Logger(subsystem: Bundle.main.bundleIdentifier!, category: "main")
    
    init(_ workStat: WorkStat) {
        self.workStat = workStat
    }
    
    func setReadStatus(_ readStatus: ReadStatus) {
        workStat.readStatus = readStatus
    }
    
    func setWorkStat(_ workStat: WorkStat) {
        self.workStat = workStat
    }
}
