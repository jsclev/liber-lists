import SwiftUI

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
        VStack {
            if readStatus == ReadStatus.notRead {
                Button(action: {
                    let workStat = userDao.upsertWorkReadStatus(user: user,
                                                                work: work,
                                                                readStatus: ReadStatus.read)
                    workStatVM.setWorkStat(workStat)
                }) {
                    HStack {
                        Image(systemName: "checkmark.circle")
                        Text("I have read it")
                    }.padding(10.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0)
                    )
                }
            }
            else if readStatus == ReadStatus.currentlyReading {
                Text("I am currently reading it")
            }
            else if readStatus == ReadStatus.read {
                Button(action: {
                    let workStat = userDao.upsertWorkReadStatus(user: user,
                                                                work: work,
                                                                readStatus: ReadStatus.notRead)
                    workStatVM.setWorkStat(workStat)

                }) {
                    HStack {
                        Image(systemName: "checkmark.circle")
                        Text("I have read it, back to not read")
                    }.padding(10.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0)
                    )
                }
            }
            else if readStatus == ReadStatus.wantToRead {
                Text("I want to read it")
            }
        }
    }
}
