import SwiftUI

@main
struct ScintillateApp: App {
    @StateObject var store: Store
    
    init() {
        let db = Db(fullRefresh: true)
        let store = Store(db: db)
        
        self._store = StateObject(wrappedValue: store)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
                .environment(\.colorScheme, .dark)
        }
    }
}
