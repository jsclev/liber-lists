import Foundation
import os
import Combine

class WorkStatViewModel: ObservableObject {
    @Published var workStat: WorkStat
    
    init(_ workStat: WorkStat) {
        self.workStat = workStat
    }
    
    func setReadStatus(_ readStatus: ReadStatus) {
        workStat.readStatus = readStatus
    }
    
    func setWorkStat(_ workStat: WorkStat) {
        self.workStat = workStat
    }
    
    func toggleReadStatus() {
        if workStat.readStatus == ReadStatus.read {
            workStat.readStatus = ReadStatus.notRead
        }
        else {
            workStat.readStatus = ReadStatus.read
        }
    }
}
