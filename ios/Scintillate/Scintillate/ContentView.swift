import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: Store
        
    var body: some View {
        ScrollView {
            ForEach(store.db.work.getAll(), id: \.self) { work in
                Text(work.getTitleWithAuthors())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
