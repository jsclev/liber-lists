import SwiftUI

extension Color {
    static let app1 = Color(red: 28/255, green: 55/255, blue: 85/255)
    static let app2 = Color(red: 23/255, green: 40/255, blue: 85/255)
    static let app3 = Color(red: 115/255, green: 234/255, blue: 216/255)
}

struct ContentView: View {
    @EnvironmentObject var store: Store
    
    var awardColumns: [GridItem] {[
        GridItem(.flexible(minimum: 70)),
        GridItem(.flexible(minimum: 70)),
        GridItem(.flexible(minimum: 70)),
        GridItem(.flexible(minimum: 70))
    ]}

    var body: some View {
        ScrollView {
            LazyVGrid(columns: awardColumns, spacing: 1.5) {
                ForEach(store.db.work.getHugoWinnersOnly(), id: \.self) { work in
                    let uiImage =  (UIImage(named: work.imageName) ?? UIImage(named: "default-cover"))!

                    VStack {
                        Image(uiImage: uiImage)
                             .resizable()
                             .aspectRatio(contentMode: .fit)
                             .frame(width: 92.8)
//                             .cornerRadius(6)
//                             .border(Color.white, width: 0.25)
                        Text(work.title).font(.system(size: 11.0)).multilineTextAlignment(.center)
                        Text(work.getAwardText()).font(.system(size: 11.0))
//                        Spacer()
                    }
                }
            }
            
        }
        .background(Color.black.ignoresSafeArea())
//        .background(Color("MainBackground").ignoresSafeArea())
    }
}
