import SwiftUI

@main
struct ScintillateApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            let db = Db(fullRefresh: true)
        }
    }
}
