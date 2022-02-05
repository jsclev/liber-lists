import SwiftUI

struct WorkDetailsView: View {
    @EnvironmentObject var store: Store
    var work: Work
    @StateObject var workStatVM: WorkStatViewModel

    var user: User {
        store.userViewModel.user
    }
    
    var body: some View {
        VStack {
            ZStack {
                let uiImage: UIImage =  (UIImage(named: work.imageName) ?? UIImage(named: "default-cover"))!
                
                if user.getReadStatus(work: work) == ReadStatus.read {
                    Image(uiImage: uiImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                else {
                    Image(uiImage: uiImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(12)
                }
            }
            
            UpdateReadStatusView(workStatVM: workStatVM)
        }
    }
}
