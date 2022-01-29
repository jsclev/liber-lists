import Foundation
import os

class UserViewModel: ObservableObject {
    @Published var user: User?

    let logger = Logger(subsystem: Bundle.main.bundleIdentifier!, category: "main")
    
    var store: Store? = nil
    
    func setStore(_ store: Store) {
        self.store = store
    }
    
    func load() {
        guard let store = store else {
            self.logger.error("Store not initialized")
            return
        }
        
            do {
                self.user = try store.db.user.getCurrentUser()
            } catch DbError.Db(let message) {
                self.logger.error("Unable to run main search query: \(message, privacy: .public)")
            } catch {
                self.logger.error("Unable to run main search query.")
            }

    }
}
