import Foundation

enum ReadStatus {
    case notRead
    case wantToRead
    case currentlyReading
    case read
}

enum OwnStatus {
    case doNotOwn
    case wantToOwn
    case owned
}

struct WorkStat: Equatable, Hashable {
    let id: Int
    let work: Work
    var readStatus: ReadStatus
    var ownStatus: OwnStatus
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    mutating func setReadStatus(_ readStatus: ReadStatus) {
        self.readStatus = readStatus
    }
}
