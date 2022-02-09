import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var store: Store
    @StateObject var headerViewModel: HeaderViewModel

    var body: some View {
        VStack {
            HStack {
                Text(String(headerViewModel.userScoreText))
                Spacer()
                Text(headerViewModel.userViewModel.user.getName())
                Spacer()
                Text("1000")
            }
            
            ZStack {
                GeometryReader { geometry in
                    let totalWidth = geometry.size.width
                    let scoreWidth = headerViewModel.getScoreWidth(totalWidth: totalWidth)
                    
                    Rectangle()
                        .fill(Color.app2)
                        .cornerRadius(10, corners: [.topLeft, .bottomLeft, .topRight, .bottomRight])
//                        .frame(width: totalWidth)
                    
                    Rectangle()
                        .fill(Color.appGreen)
                        .cornerRadius(10, corners: [.topLeft, .bottomLeft])
                        .frame(width: scoreWidth)

//                    RoundedRectangle(cornerRadius: 15, style: .continuous)
//                        .fill(Color.app2)
//                        .frame(width: totalWidth - 40)
//                        .padding(.leading, 20)
//
//                    RoundedRectangle(cornerRadius: 15, style: .continuous)
//                        .fill(Color.appGreen)
//                        .frame(width: scoreWidth)
//                        .padding(.leading, 20)

                }
            }
            .frame(height: 35.0)
        }
        .padding(.leading, 15)
        .padding(.trailing, 15)
    }
}
