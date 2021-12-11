import SwiftUI

extension Color {
    static let app1 = Color(red: 28/255, green: 55/255, blue: 85/255)
    static let app2 = Color(red: 23/255, green: 40/255, blue: 85/255)
    static let app3 = Color(red: 115/255, green: 234/255, blue: 216/255)
}

struct ContentView: View {
    @EnvironmentObject var store: Store

    var body: some View {
        let size: CGFloat = 115
        let padding: CGFloat = 20
        
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())],
                      spacing: padding) {
                ForEach(store.db.work.getHugoWinnersOnly(), id: \.self) { work in
                    let uiImage =  (UIImage(named: work.imageName) ?? UIImage(named: "default-cover"))!
                    let borderColor = work.id % 2 == 0 ? Color.white : Color.white
                    let borderWidth = 0.25 //work.id % 2 == 0 ? 0.25 : 0.25
                    let checkmarkImageName = work.id % 3 == 0 ? "checkmark" : "checkmark-placeholder"
                    
                    VStack {
                        ZStack {
                            Image(uiImage: uiImage)
                                 .resizable()
                                 .aspectRatio(contentMode: .fit)
                                 .border(borderColor, width: borderWidth)
                            VStack {
                                HStack {
                                    Spacer()
                                    Image(checkmarkImageName)
                                         .resizable()
                                         .aspectRatio(contentMode: .fit)
                                         .frame(width: 20)
                                         .padding(2)
                                }
                                Spacer()
                            }
                        }
                        Text(work.title)
                            .font(.custom("Arial", size: 9))
                            .lineLimit(1)
                            .truncationMode(.tail)
                            .allowsTightening(true)
                        Text(work.getAuthorText())
                            .font(.custom("Arial", size: 9))
                        Text(work.getAwardText())
                            .font(.custom("Arial", size: 9))
                    }
                    .padding(.horizontal, 10)
                }
            }
        }

    }
}
