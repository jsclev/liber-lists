import SwiftUI

extension Color {
    static let app1 = Color(red: 50/255, green: 50/255, blue: 50/255)
    static let app2 = Color(red: 30/255, green: 30/255, blue: 30/255)
    static let app3 = Color.black
}

struct BookImageView: View {
    var user: User
    var work: Work
    
    var body: some View {
        ZStack {
            let uiImage: UIImage =  (UIImage(named: work.imageName) ?? UIImage(named: "default-cover"))!
            
            Image(uiImage: uiImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.top, 9)
                .padding(.leading, 9)
                .padding(.trailing, 9)
                .padding(.bottom, 0)
            VStack {
                HStack {
                    Spacer()
                    
                    VStack {
                        if user.getReadStatus(work: work) == ReadStatus.read {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                                .background(Color.white.mask(Circle()))
                                .font(.system(size: 20))
                                .padding(12)
                        } else if user.getReadStatus(work: work) == ReadStatus.wantToRead {
                            Image(systemName: "checkmark.circle")
                                .foregroundColor(.green)
                                .background(Color.white.mask(Circle()))
                                .font(.system(size: 20))
                                .padding(12)
                        } else if user.getReadStatus(work: work) == ReadStatus.currentlyReading {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(Color(.systemBlue))
                                .background(Color.white.mask(Circle()))
                                .font(.system(size: 20))
                                .padding(12)
                        }
                        
                        if user.getOwnStatus(work: work) == OwnStatus.owned {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                                .background(Color.white.mask(Circle()))
                                .font(.system(size: 20))
                                .padding(.top, 0)
                        } else if user.getOwnStatus(work: work) == OwnStatus.wantToOwn {
                            Image(systemName: "checkmark.circle")
                                .foregroundColor(.green)
                                .background(Color.white.mask(Circle()))
                                .font(.system(size: 20))
                                .padding(.top, 0)
                        }
                        Spacer()
                    }
                }
                Spacer()
            }
        }
    }
}

struct BookInfoView: View {
    var user: User
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
            }
            else {
                Text(series.name)
                    .foregroundColor(ColorManager.mainForeground)
                    .font(.custom("Arial", size: fontSize))
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .allowsTightening(true)
            }
        }
        else {
            Text("")
                .foregroundColor(ColorManager.mainForeground)
                .font(.custom("Arial", size: fontSize))
                .lineLimit(1)
                .truncationMode(.tail)
                .allowsTightening(true)
        }
        
        Text("")
            .foregroundColor(ColorManager.mainForeground)
            .font(.custom("Arial", size: fontSize))
            .lineLimit(1)
            .truncationMode(.tail)
            .allowsTightening(true)
    }
}

struct ContentView: View {
    @EnvironmentObject var store: Store
    
    var body: some View {
        let padding: CGFloat = 3
        let user = store.db.user.getCurrentUser()
        
        TabView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())],
                          spacing: padding) {
                    ForEach(store.db.work.getHugoWinnersOnly(), id: \.self) { work in
                        VStack {
                            BookImageView(user: user, work: work)
                            BookInfoView(user: user, work: work)
                        }
                        .background(Color.app1.ignoresSafeArea())
                        .cornerRadius(12)
                    }
                }
            }
            .background(Color.app2.ignoresSafeArea())
            .tabItem {
                Image(systemName: "books.vertical")
            }
            
            Text("User Stats")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
//                    Image(systemName: "chart.bar")
//                    Image(systemName: "chart.pie")
                    Image(systemName: "chart.line.uptrend.xyaxis")
                }
            
            VStack {
                Text(store.db.user.getCurrentUser().getName())
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                Text(store.db.user.getCurrentUser().getEmail())
                    .font(.system(size: 24, weight: .regular, design: .rounded))
            }
            .tabItem {
                Image(systemName: "person.crop.circle")
            }
        }
    }
}
