import SwiftUI

extension Color {
    static let app1 = Color(red: 50/255, green: 50/255, blue: 50/255)
    static let app2 = Color(red: 30/255, green: 30/255, blue: 30/255)
    static let app3 = Color.black
}

struct BookImageView: View {
    var uiImage: UIImage
    var checkmarkImageName: String

    var body: some View {
        ZStack {
            Image(uiImage: uiImage)
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .padding(7)
//                 .border(Color.white, width: 0.25)
            VStack {
                HStack {
                    Spacer()
                    Image(checkmarkImageName)
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                         .frame(width: 20)
                         .padding(7)
                }
                Spacer()
            }
        }
    }
}

struct BookInfoView: View {
    var work: Work

    var body: some View {
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
}

struct ContentView: View {
    @EnvironmentObject var store: Store

    var body: some View {
        let size: CGFloat = 115
        let padding: CGFloat = 11

        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())],
                      spacing: padding) {
                ForEach(store.db.work.getHugoWinnersOnly(), id: \.self) { work in
                    let uiImage: UIImage =  (UIImage(named: work.imageName) ?? UIImage(named: "default-cover"))!
                    let checkmarkImageName: String = work.id % 3 == 0 ? "checkmark" : "checkmark-placeholder"

                    VStack {
                        BookImageView(uiImage: uiImage, checkmarkImageName: checkmarkImageName)
                        BookInfoView(work: work)
                    }
//                    .border(Color.white, width: 0.25)
                    .padding(10)

                    .background(Color.app1.ignoresSafeArea())
                    .padding(10)

                }
            }
        }
        .background(Color.app2.ignoresSafeArea())

    }
}
