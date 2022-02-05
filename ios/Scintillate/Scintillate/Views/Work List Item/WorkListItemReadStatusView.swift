import SwiftUI


struct WorkListItemReadStatusView: View {
    @StateObject var workStatVM: WorkStatViewModel
    
    var readStatus: ReadStatus {
        workStatVM.workStat.readStatus
    }
    
    var ownStatus: OwnStatus {
        workStatVM.workStat.ownStatus
    }
    
    var body: some View {
        HStack {
            let read = readStatus == ReadStatus.read
            let wantToRead = readStatus == ReadStatus.wantToRead
            let currentlyReading = readStatus == ReadStatus.currentlyReading
            let owned = ownStatus == OwnStatus.owned
            let wantToOwn = ownStatus == OwnStatus.wantToOwn
            let fadedColor = Color.white.opacity(0.3)
            
            Image(systemName: read ? "checkmark.circle.fill" : "checkmark.circle")
                .foregroundColor(read ? Color.appGreen : fadedColor)
                .font(.system(size: 16))
            Spacer()
            Image(systemName: wantToRead ? "bookmark.fill" : "bookmark")
                .foregroundColor(wantToRead ? .pink : fadedColor)
                .font(.system(size: 16))
            Spacer()
            Image(systemName: currentlyReading ? "eyeglasses" : "eyeglasses")
                .foregroundColor(currentlyReading ? .blue : fadedColor)
                .font(.system(size: 16))
            Spacer()
            Image(systemName: owned ? "book.closed.fill" : "book.closed")
                .foregroundColor(owned ? .yellow : fadedColor)
                .font(.system(size: 16))
        }
        .padding(.bottom, 5)
    }
}
