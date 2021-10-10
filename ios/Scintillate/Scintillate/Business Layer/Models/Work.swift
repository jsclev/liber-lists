import Foundation

struct Work: Equatable, Hashable {
    let id: Int
//    let updatedAt: Date
//    let syncedAt: Date
    let title: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
//        hasher.combine(nameSnippet)
    }
}
