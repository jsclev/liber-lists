import Foundation

struct Series: Equatable, Hashable {
    let id: Int
    let name: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
