import SwiftUI

extension Color {
    static let app1 = Color(red: 28/255, green: 55/255, blue: 85/255)
    static let app2 = Color(red: 23/255, green: 40/255, blue: 85/255)
    static let app3 = Color(red: 115/255, green: 234/255, blue: 216/255)
}

struct ContentView: View {
    @EnvironmentObject var store: Store
        
    var body: some View {
        ScrollView {
            ForEach(store.db.work.getHugoWinnersOnly(), id: \.self) { work in
                WorkListItemView(work: work)
                    .foregroundColor(Color("MainForeground"))
            }
        }
        .background(Color.black.ignoresSafeArea())
//        .background(Color("MainBackground").ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
