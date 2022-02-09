import SwiftUI

extension Color {
    static let app1 = Color(red: 35/255, green: 40/255, blue: 48/255)
    static let app2 = Color(red: 27/255, green: 31/255, blue: 40/255)
    static let app3 = Color.black
    
    static let appGreen = Color(red: 70/255, green: 255/255, blue: 81/255)
    static let appBlue = Color(red: 70/255, green: 255/255, blue: 81/255)
    static let appRed = Color(red: 70/255, green: 255/255, blue: 81/255)
    static let appYellow = Color(red: 70/255, green: 255/255, blue: 81/255)
//    static let appBlue = Color(red: 8/255, green: 191/255, blue: 255/255)
//    static let appRed = Color(red: 217/255, green: 1/255, blue: 52/255)
//    static let appYellow = Color(red: 253/255, green: 253/255, blue: 15/255)
}

struct BookInfoView: View {
    @StateObject var workStatVM: WorkStatViewModel

    var user: User
    var work: Work
    let fontSize = 12.0
    
    var body: some View {
        HStack {
        VStack(alignment: .leading, spacing: 0) {
            Text(work.title)
                .foregroundColor(ColorManager.mainForeground)
                .font(.headline)
                .lineLimit(2)
                .truncationMode(.tail)
                .allowsTightening(true)
                .padding(.bottom, 2)
            Group {
            Text(work.getAuthorText())
                .foregroundColor(ColorManager.mainForeground)
                .font(.caption)
                .lineLimit(1)
                .truncationMode(.tail)
                .allowsTightening(true)
            Text(work.getAwardText())
                .foregroundColor(ColorManager.mainForeground)
                .font(.caption)
                .lineLimit(1)
                .truncationMode(.tail)
                .allowsTightening(true)

            if let series = work.series {
                if let seriesOrdinalName = work.seriesOrdinalName {
                    Text(series.name + ", " + seriesOrdinalName)
                        .foregroundColor(ColorManager.mainForeground)
                        .font(.caption)
                        .lineLimit(1)
                        .truncationMode(.tail)
                        .allowsTightening(true)
                }
                else {
                    Text(series.name)
                        .foregroundColor(ColorManager.mainForeground)
                        .font(.caption)
                        .lineLimit(1)
                        .truncationMode(.tail)
                        .allowsTightening(true)
                }
            }
            else {
                Text("")
                    .foregroundColor(ColorManager.mainForeground)
                    .font(.caption)
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .allowsTightening(true)
            }

            Text("")
                .foregroundColor(ColorManager.mainForeground)
                .font(.caption)
                .lineLimit(1)
                .truncationMode(.tail)
                .allowsTightening(true)
            Spacer(minLength: 0)
            
            WorkListItemReadStatusView(workStatVM: workStatVM)
//            HStack {
//                let read = user.getReadStatus(work: work) == ReadStatus.read
//                let wantToRead = user.getReadStatus(work: work) == ReadStatus.wantToRead
//                let currentlyReading = user.getReadStatus(work: work) == ReadStatus.currentlyReading
//                let owned = user.getOwnStatus(work: work) == OwnStatus.owned
//                let wantToOwn = user.getOwnStatus(work: work) == OwnStatus.wantToOwn
//                let fadedColor = Color.white.opacity(0.3)
//                
//                Image(systemName: read ? "checkmark.circle.fill" : "checkmark.circle")
//                    .foregroundColor(read ? Color.appGreen : fadedColor)
//                    .font(.system(size: 16))
//                Spacer()
//                Image(systemName: wantToRead ? "bookmark.fill" : "bookmark")
//                    .foregroundColor(wantToRead ? .pink : fadedColor)
//                    .font(.system(size: 16))
//                Spacer()
//                Image(systemName: currentlyReading ? "eyeglasses" : "eyeglasses")
//                    .foregroundColor(currentlyReading ? .blue : fadedColor)
//                    .font(.system(size: 16))
//                Spacer()
//                Image(systemName: owned ? "book.closed.fill" : "book.closed")
//                    .foregroundColor(owned ? .yellow : fadedColor)
//                    .font(.system(size: 16))
//            }
//            .padding(.bottom, 5)
            }
//            .opacity(0.6)
        }
            Spacer(minLength: 0)
        }
    }
}

struct WorkListView: View {
    @EnvironmentObject var store: Store
//    @StateObject var workListVM: WorkListViewModel
//    @StateObject var userVM: UserViewModel
    
    var works: [Work] {
        store.workListViewModel.workList.works
    }
    
    var body: some View {
        let padding: CGFloat = 2
        let headerViewModel = HeaderViewModel(userViewModel: store.userViewModel, workListViewModel: store.workListViewModel)

        TabView {
            NavigationView {
                VStack {
//                    TempView(headerViewModel: headerViewModel)
                    
                    Button(action: {
                        store.userViewModel.updateName("Joshua")
                        store.userViewModel.updateWorkStat(WorkStat(id: -1,
                                                                    work: Work(id: -1,
                                                                               title: "hello",
                                                                               imageName: "dune",
                                                                               authors: [],
                                                                               awards: [],
                                                                               series: nil,
                                                                               seriesOrdinalName: nil),
                                                                    readStatus: ReadStatus.read,
                                                                    ownStatus: OwnStatus.doNotOwn))
                    }) {
                        Text("Update work stats")
                    }
                    
                    HeaderView(headerViewModel: headerViewModel)
                    
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())],
                                  spacing: padding) {
                                ForEach(works, id: \.self) { work in
                                    let read = store.userViewModel.user.getReadStatus(work: work) == ReadStatus.read
                                    let workStat = store.userViewModel.user.getWorkStat(work: work)
                                    let workStatViewModel = WorkStatViewModel(workStat)
                                    
                                    VStack {
                                        NavigationLink(
                                            destination: WorkDetailsView(work: work, workStatVM: workStatViewModel),
                                            label: {
                                                WorkListCoverView(user: store.userViewModel.user, work: work)
                                            })
                                        BookInfoView(workStatVM: workStatViewModel, user: store.userViewModel.user, work: work)
                                    }
                                    .padding(.leading, 16)
                                    .padding(.trailing, 16)
                                    .padding(.top, 16)
                                    .padding(.bottom, 10)
                                    .background(
                                        RoundedRectangle(cornerRadius: 20)
                                            .strokeBorder(Color.app1, lineWidth: read ? 2 : 0, antialiased: true)
                                            .background(
                                                RoundedRectangle(cornerRadius: 20)
                                                    .fill(Color.app1)
                                                    .overlay(Color.green.opacity(read ? 0.0 : 0).cornerRadius(20))
                                            )

                                    )
                                    .shadow(color: .black.opacity(0.16), radius: 8, x: 0, y: 0)
                                    .padding(5)
                                }
                        }
                        .padding(.horizontal, 10)
                        
                    }
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                }
            }
            .background(Color.app2.ignoresSafeArea())
            .tabItem {
                Image(systemName: "books.vertical")
            }
            
            VStack {
                Text("User Stats")
                UserStatsView(user: store.userViewModel.user, works: works)
            }
            .font(.system(size: 30, weight: .bold, design: .rounded))
            .tabItem {
                Image(systemName: "chart.line.uptrend.xyaxis")
            }
//            VStack {
//                Text(store.db.user.getCurrentUser().getName())
//                    .font(.system(size: 30, weight: .bold, design: .rounded))
//                Text(store.db.user.getCurrentUser().getEmail())
//                    .font(.system(size: 24, weight: .regular, design: .rounded))
//            }
//            .tabItem {
//                Image(systemName: "person.crop.circle")
//            }
        }
    }
}
