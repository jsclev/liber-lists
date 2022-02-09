import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct UpdateReadStatusView: View {
    @EnvironmentObject var store: Store
    @StateObject var workStatVM: WorkStatViewModel
    
    var user: User {
        store.userViewModel.user
    }
    
    var userDao: UserDAO {
        store.db.user
    }
    
    var readStatus: ReadStatus {
        workStatVM.workStat.readStatus
    }
    
    var work: Work {
        workStatVM.workStat.work
    }
    
    var body: some View {
        HStack(spacing: 0) {
            Button(action: {
                let newStatus = readStatus == ReadStatus.read ? ReadStatus.notRead : ReadStatus.read
                let workStat = userDao.upsertWorkReadStatus(user: user,
                                                            work: work,
                                                            readStatus: newStatus)
                store.userViewModel.updateName(work.title)
                store.userViewModel.updateWorkStat(workStat)
                workStatVM.setWorkStat(workStat)
            }) {
                if readStatus == ReadStatus.read {
                    ZStack {
                        Rectangle()
                            .fill(Color.appGreen)
                            .cornerRadius(10, corners: [.topLeft, .bottomLeft])
                        VStack {
                            Image(systemName: "checkmark.circle")
                                .foregroundColor(Color.black)
                            Text("Read it")
                                .foregroundColor(Color.black)
                                .font(Font.headline.weight(.semibold))

                        }
                        .padding(10.0)
                    }
                } else {
                    ZStack {
                        ZStack {
                            Rectangle()
                                .fill(Color.appGreen)
                                .cornerRadius(10, corners: [.topLeft, .bottomLeft])
                            Rectangle()
                                .fill(Color.black)
                                .cornerRadius(10, corners: [.topLeft, .bottomLeft])
                                .padding(2)
                            VStack {
                                Image(systemName: "checkmark.circle")
                                    .foregroundColor(Color.appGreen)
                                Text("Read it")
                                    .foregroundColor(Color.appGreen)
                            }
                            .padding(10.0)
                        }
                    }
                }
            }
            
            Button(action: {
                let newStatus = readStatus == ReadStatus.currentlyReading ? ReadStatus.notRead : ReadStatus.currentlyReading
                let workStat = userDao.upsertWorkReadStatus(user: user,
                                                            work: work,
                                                            readStatus: newStatus)
                workStatVM.setWorkStat(workStat)
            }) {
                if readStatus == ReadStatus.currentlyReading {
                    ZStack {
                        Rectangle()
                            .fill(Color.appGreen)
                        VStack {
                            Image(systemName: "eyeglasses")
                                .foregroundColor(Color.black)
                            Text("Currently reading it")
                                .foregroundColor(Color.black)
                                .font(Font.headline.weight(.semibold))
                        }
                        .padding(10.0)
                    }
                } else {
                    ZStack {
                        ZStack {
                            Rectangle()
                                .fill(Color.appGreen)
                            Rectangle()
                                .fill(Color.black)
                                .padding(.top, 2)
                                .padding(.bottom, 2)
                            VStack {
                                Image(systemName: "eyeglasses")
                                    .foregroundColor(Color.appGreen)
                                Text("Currently reading it")
                                    .foregroundColor(Color.appGreen)
                            }
                            .padding(10.0)
                        }
                    }
                }
            }
            
            Button(action: {
                let newStatus = readStatus == ReadStatus.wantToRead ? ReadStatus.notRead : ReadStatus.wantToRead
                let workStat = userDao.upsertWorkReadStatus(user: user,
                                                            work: work,
                                                            readStatus: newStatus)
                workStatVM.setWorkStat(workStat)
            }) {
                if readStatus == ReadStatus.wantToRead {
                    ZStack {
                        Rectangle()
                            .fill(Color.appGreen)
                        VStack {
                            Image(systemName: "bookmark")
                                .foregroundColor(Color.black)
                            Text("Want to read it")
                                .foregroundColor(Color.black)
                                .font(Font.headline.weight(.semibold))
                        }
                        .padding(10.0)
                    }
                } else {
                    ZStack {
                        ZStack {
                            Rectangle()
                                .fill(Color.appGreen)
                            Rectangle()
                                .fill(Color.black)
                                .padding(.top, 2)
                                .padding(.bottom, 2)
                            VStack {
                                Image(systemName: "bookmark")
                                    .foregroundColor(Color.appGreen)
                                Text("Want to read it")
                                    .foregroundColor(Color.appGreen)
                            }
                            .padding(10.0)
                        }
                    }
                }
            }
            
            Button(action: {
                let workStat = userDao.upsertWorkReadStatus(user: user,
                                                            work: work,
                                                            readStatus: ReadStatus.notRead)
                workStatVM.setWorkStat(workStat)
            }) {
                if readStatus == ReadStatus.notRead {
                    ZStack {
                        Rectangle()
                            .fill(Color.appGreen)
                            .cornerRadius(10, corners: [.topRight, .bottomRight])
                        VStack {
                            Image(systemName: "checkmark.circle")
                                .foregroundColor(Color.black)
                            Text("Have not read it")
                                .foregroundColor(Color.black)
                                .font(Font.headline.weight(.semibold))

                        }
                        .padding(10.0)
                    }
                } else {
                    ZStack {
                        ZStack {
                            Rectangle()
                                .fill(Color.appGreen)
                                .cornerRadius(10, corners: [.topRight, .bottomRight])
                            Rectangle()
                                .fill(Color.black)
                                .cornerRadius(10, corners: [.topRight, .bottomRight])
                                .padding(2)
                            VStack {
                                Image(systemName: "checkmark.circle")
                                    .foregroundColor(Color.appGreen)
                                Text("Have not read it")
                                    .foregroundColor(Color.appGreen)
                            }
                            .padding(10.0)
                        }
                    }
                }
            }
        }
    }
}
