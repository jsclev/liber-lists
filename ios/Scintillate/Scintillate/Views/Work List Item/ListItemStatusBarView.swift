import SwiftUI


struct ListItemStatusBarView: View {
    @EnvironmentObject var store: Store
    @StateObject var workStatViewModel: WorkStatViewModel
    
    var userDao: UserDAO {
        store.db.user
    }
    
    var readStatus: ReadStatus {
        workStatViewModel.workStat.readStatus
    }
    
    var ownStatus: OwnStatus {
        workStatViewModel.workStat.ownStatus
    }
    
    var body: some View {
        HStack {
            let read = readStatus == ReadStatus.read
            let wantToRead = readStatus == ReadStatus.wantToRead
            let currentlyReading = readStatus == ReadStatus.currentlyReading
            let owned = ownStatus == OwnStatus.owned
            let fadedColor = Color.white.opacity(0.3)
            
            Button(action: {
                let newStatus = readStatus == ReadStatus.read ? ReadStatus.notRead : ReadStatus.read
                let workStat = userDao.upsertWorkReadStatus(user: store.userViewModel.user,
                                                            work: workStatViewModel.workStat.work,
                                                            readStatus: newStatus)
                store.userViewModel.updateWorkStat(workStat)
                workStatViewModel.setWorkStat(workStat)
                store.userViewModel.user.firstName = String(workStat.id)
//                store.userViewModel.user.workStats[0].readStatus = ReadStatus.read
            }) {
                Image(systemName: read ? "checkmark.circle.fill" : "checkmark.circle")
                    .foregroundColor(read ? Color.appGreen : fadedColor)
                    .font(.system(size: 16))
            }

            Spacer()
            Image(systemName: wantToRead ? "bookmark.fill" : "bookmark")
                .foregroundColor(wantToRead ? Color.appRed : fadedColor)
                .font(.system(size: 16))
            Spacer()
            Image(systemName: currentlyReading ? "eyeglasses" : "eyeglasses")
                .foregroundColor(currentlyReading ? Color.appBlue : fadedColor)
                .font(.system(size: 16))
            Spacer()
            Image(systemName: owned ? "book.closed.fill" : "book.closed")
                .foregroundColor(owned ? Color.appYellow : fadedColor)
                .font(.system(size: 16))
        }
        .padding(.bottom, 5)
    }
}
