import SwiftUI

struct UserStatsView: View {
    var user: User
    var works: [Work]
    
    var body: some View {
        VStack {
            let readMsg = "Read: " + String(user.getReadCount(readStatus: ReadStatus.read)) + " of " + String(works.count)
            let readingMsg = "Reading: " + String(user.getReadCount(readStatus: ReadStatus.currentlyReading))
            let wantToReadMsg = "Want to read: " + String(user.getReadCount(readStatus: ReadStatus.wantToRead))
            
            let ownMsg = "Own: " + String(user.getOwnCount(ownStatus: OwnStatus.owned)) + " of " + String(works.count)
            let wantToOwnMsg = "Want to own: " + String(user.getOwnCount(ownStatus: OwnStatus.wantToOwn))

            Text(readMsg)
            Text(readingMsg)
            Text(wantToReadMsg)
            Text(ownMsg)
            Text(wantToOwnMsg)
        }
    }
}
