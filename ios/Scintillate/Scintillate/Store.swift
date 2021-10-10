import Foundation
import Combine

class Store: ObservableObject {
    @Published var workListViewModel = WorkListViewModel()
    
    let db: Db
    
    // Deal with SwiftUI update problems
    private var anyCancellableWorkListViewModel: AnyCancellable? = nil

    init(db: Db) {
        self.db = db
        
        workListViewModel.setStore(self)
        workListViewModel.search()

        // Deal with SwiftUI update problems
        anyCancellableWorkListViewModel = workListViewModel.objectWillChange.sink { [weak self] _ in
            self?.objectWillChange.send()
        }
    }
}
