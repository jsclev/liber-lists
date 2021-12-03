import Foundation

struct Work: Equatable, Hashable {
    let id: Int
//    let updatedAt: Date
//    let syncedAt: Date
    let title: String
    let authors: [Author]
    
    func getTitleWithAuthors() -> String {
        var titleText = title
        
        if authors.count > 0 {
            titleText += " (" + authors.map{$0.getName()}.joined(separator: ", ") + ")"
        }
        
        return titleText
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
