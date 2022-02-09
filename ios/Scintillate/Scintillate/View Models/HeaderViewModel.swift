import Foundation
import os
import Combine

class HeaderViewModel: ObservableObject {
    let logger = Logger(subsystem: Bundle.main.bundleIdentifier!, category: "main")

    @Published var userViewModel: UserViewModel
    @Published var workListViewModel: WorkListViewModel
    
    var anyCancellables: [AnyCancellable] = []
    
    init(userViewModel: UserViewModel, workListViewModel: WorkListViewModel) {
        self.userViewModel = userViewModel
        self.workListViewModel = workListViewModel
        
        registerNestedObservableObject(self.userViewModel, cancellables: &anyCancellables)
        registerNestedObservableObject(self.workListViewModel, cancellables: &anyCancellables)
    }
    
    var userScore: Double {
        1000.0 * userScorePercent
    }
    
    var userScorePercent: Double {
        if workListViewModel.workList.getTotalScore() > 0 {
            return Double(userViewModel.user.getScore()) / Double(workListViewModel.workList.getTotalScore())
        }
        
        return 0.0
    }
    
    var userScoreText: String {
        String(format: "%.2f", userScore)
    }
    
    func getScoreWidth(totalWidth: Double) -> Double {
        return userScorePercent * totalWidth
    }
}
