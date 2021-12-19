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
                 .padding(.top, 12)
                 .padding(.leading, 12)
                 .padding(.trailing, 12)
                 .padding(.bottom, 0)
            VStack {
                HStack {
                    Spacer()
                    Image(checkmarkImageName)
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                         .frame(width: 20)
                         .padding(14)
                }
                Spacer()
            }
        }
    }
}

struct BookInfoView: View {
    var work: Work
    let fontSize = 12.0

    var body: some View {
        Text(work.title)
            .foregroundColor(ColorManager.mainForeground)
            .font(.custom("Arial", size: fontSize))
            .lineLimit(1)
            .truncationMode(.tail)
            .allowsTightening(true)
        Text(work.getAuthorText())
            .foregroundColor(ColorManager.mainForeground)
            .font(.custom("Arial", size: fontSize))
            .lineLimit(1)
            .truncationMode(.tail)
            .allowsTightening(true)
        Text(work.getAwardText())
            .foregroundColor(ColorManager.mainForeground)
            .font(.custom("Arial", size: fontSize))
            .lineLimit(1)
            .truncationMode(.tail)
            .allowsTightening(true)
        
        if let series = work.series {
            if let seriesOrdinalName = work.seriesOrdinalName {
                Text(series.name + ", " + seriesOrdinalName)
                    .foregroundColor(ColorManager.mainForeground)
                    .font(.custom("Arial", size: fontSize))
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .allowsTightening(true)
                    .padding(.bottom, 9)
            }
            else {
                Text(series.name)
                    .foregroundColor(ColorManager.mainForeground)
                    .font(.custom("Arial", size: fontSize))
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .allowsTightening(true)
                    .padding(.bottom, 9)
            }
        }
        else {
            Text("")
                .foregroundColor(ColorManager.mainForeground)
                .font(.custom("Arial", size: fontSize))
                .lineLimit(1)
                .truncationMode(.tail)
                .allowsTightening(true)
                .padding(.bottom, 9)
        }
    }
}

struct ContentView: View {
    @EnvironmentObject var store: Store

    var body: some View {
        let size: CGFloat = 115
        let padding: CGFloat = 3

        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())],
                      spacing: padding) {
                ForEach(store.db.work.getHugoWinnersOnly(), id: \.self) { work in
//                    let uiImage: UIImage =  (UIImage(named: work.imageName + "-1") ?? UIImage(named: "default-cover-1"))!
                    let uiImage: UIImage =  (UIImage(named: work.imageName) ?? UIImage(named: "default-cover"))!
                    let checkmarkImageName: String = work.id % 3 == 0 ? "checkmark" : "checkmark-placeholder"

                    VStack {
                        BookImageView(uiImage: uiImage, checkmarkImageName: checkmarkImageName)
                        BookInfoView(work: work)
                    }
//                    .padding(3)
                    .background(Color.app1.ignoresSafeArea())
                    .cornerRadius(15)
                    .padding(2)
//                    .shadow(color: Color.white, radius: 3)
                }
            }
        }
        .background(Color.app2.ignoresSafeArea())

    }
}
