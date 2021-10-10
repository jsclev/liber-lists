import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: Store
        
    var body: some View {
        VStack {
            ForEach(store.db.work.getAll(), id: \.self) { work in
                Text(work.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
