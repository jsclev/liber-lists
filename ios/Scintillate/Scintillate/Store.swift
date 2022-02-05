import Foundation
import Combine

class Store: ObservableObject {
    @Published var userViewModel: UserViewModel
    @Published var workListViewModel: WorkListViewModel
    
    let db: Db
    
    // Deal with SwiftUI update problems
    private var anyCancellableUserViewModel: AnyCancellable? = nil
    private var anyCancellableWorkListViewModel: AnyCancellable? = nil

    init(db: Db) {
        self.db = db
        
        userViewModel = UserViewModel(db.user.getCurrentUser())
        workListViewModel = WorkListViewModel(db.work.getHugoWinnersOnly())

        // Deal with SwiftUI update problems
        anyCancellableUserViewModel = userViewModel.objectWillChange.sink { [weak self] _ in
            self?.objectWillChange.send()
        }
        
        anyCancellableWorkListViewModel = workListViewModel.objectWillChange.sink { [weak self] _ in
            self?.objectWillChange.send()
        }
    }
}
