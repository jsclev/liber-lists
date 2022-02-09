import SwiftUI

struct WorkDetailsView: View {
    @EnvironmentObject var store: Store
    var work: Work
    @StateObject var workStatVM: WorkStatViewModel
    
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    let uiImage: UIImage =  (UIImage(named: work.imageName) ?? UIImage(named: "default-cover"))!

                    Image(uiImage: uiImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(12)
                }
                
                UpdateReadStatusView(workStatVM: workStatVM)
            }
        }
        .navigationTitle(workStatVM.workStat.work.title)
    }
}
