import SwiftUI

@main
struct ScintillateApp: App {
    @StateObject var store: Store
    
    init() {
        let db = Db(fullRefresh: false)
        let store = Store(db: db)
        
        self._store = StateObject(wrappedValue: store)
    }
    
    var body: some Scene {
        WindowGroup {
            WorkListView()
                .environmentObject(store)
                .environment(\.colorScheme, .dark)
        }
    }
}
