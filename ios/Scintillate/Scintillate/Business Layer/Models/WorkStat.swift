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
    let readStatus: ReadStatus
    let ownStatus: OwnStatus
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
