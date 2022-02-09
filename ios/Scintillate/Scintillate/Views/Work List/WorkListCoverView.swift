import SwiftUI

struct WorkListCoverView: View {
    var user: User
    var work: Work
    
    var body: some View {
        let uiImage: UIImage =  (UIImage(named: work.imageName) ?? UIImage(named: "default-cover"))!
        
        Image(uiImage: uiImage)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(12)
    }
}
