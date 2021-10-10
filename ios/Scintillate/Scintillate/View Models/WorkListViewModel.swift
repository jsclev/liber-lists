import Foundation
import os

class WorkListViewModel: ObservableObject {
    @Published var results = [Work]()

    let logger = Logger(subsystem: Bundle.main.bundleIdentifier!, category: "main")
    
    var store: Store? = nil
    
    func setStore(_ store: Store) {
        self.store = store
    }
    
//    @Published var query: String = "" {
//        didSet {
//            search()
//        }
//    }
    
    
    func search() {
        guard let store = store else {
            self.logger.error("Store not initialized")
            return
        }
        
            do {
                let results = try store.db.work.getAll()
                self.results = results
            } catch DbError.Db(let message) {
                self.logger.error("Unable to run main search query: \(message, privacy: .public)")
            } catch {
                self.logger.error("Unable to run main search query.")
            }

    }
}
