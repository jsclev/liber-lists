import Foundation

struct WorkList {
    var works: [Work]
    
    func getTotalScore() -> Int {
        var score = 0
        
        for work in works {
            // Read it
            score += 5
            
            // Own it
            score += 2
        }
        
        return score
    }
}
