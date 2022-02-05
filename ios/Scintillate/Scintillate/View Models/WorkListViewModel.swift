import Foundation
import os

class WorkListViewModel: ObservableObject {
    @Published var works: [Work]

    let logger = Logger(subsystem: Bundle.main.bundleIdentifier!, category: "main")
    
    init(_ works: [Work]) {
        self.works = works
    }
    
}
