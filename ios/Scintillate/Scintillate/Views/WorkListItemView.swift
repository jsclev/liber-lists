import SwiftUI

struct WorkListItemView: View {
    var works: [Work]
    var awardColumns: [GridItem] {
      [GridItem(.flexible(minimum: 150)),
      GridItem(.flexible(minimum: 150))]
    }
    
    var body: some View {
        LazyVGrid(columns: awardColumns) {
          ForEach(works, id: \.self) { work in
              Image("middlegame")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(height: 130)
                  .cornerRadius(7)
            }
          }
        }
    }
//    var work: Work
//
//    var body: some View {
//        HStack(alignment: .top) {
//            if work.title == "Black Sun" {
//                Image("black-sun")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 130)
//                    .cornerRadius(7)
//            }
//            else if work.title == "Gideon the Ninth" {
//                Image("gideon-the-ninth")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 130)
//                    .cornerRadius(7)
//            }
//            else if work.title == "Middlegame" {
//                Image("middlegame")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 130)
//                    .cornerRadius(7)
//            }
//            else if work.title == "The Light Brigade" {
//                Image("light-brigade")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 130)
//                    .cornerRadius(7)
//            }
//            else if work.title == "The City in the Middle of the Night" {
//                Image("city-in-the-middle-of-the-night")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 130)
//                    .cornerRadius(7)
//            }
//            else if work.title == "A Memory Called Empire" {
//                Image("memory-called-empire")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 130)
//                    .cornerRadius(7)
//            }
//            else if work.title == "The City We Became" {
//                Image("city-we-became")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 130)
//                    .cornerRadius(7)
//            }
//            else if work.title == "The Relentless Moon" {
//                Image("relentless-moon")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 130)
//                    .cornerRadius(7)
//            }
//            else if work.title == "Harrow the Ninth" {
//                Image("harrow-the-ninth")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 130)
//                    .cornerRadius(7)
//            }
//            else if work.title == "Network Effect" {
//                Image("network-effect")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 130)
//                    .cornerRadius(7)
//            }
//            else if work.title == "Piranesi" {
//                Image("piranesi")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 130)
//                    .cornerRadius(7)
//            }
//            else if work.id % 2 == 0 {
//                Image("children-of-time")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 130)
//                    .cornerRadius(7)
//            } else {
//                Image("children-of-ruin")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 130)
//                    .cornerRadius(7)
//            }
//
//            VStack(alignment: .leading) {
//                Text(work.title)
//                Text(work.getAuthorText())
//                Text(work.getAwardText())
//            }
//            Spacer()
//        }
////        .padding(.top, 40)
//    }
//}

//struct WorkListItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        let work = Work(id: 1,
//                        title: "Dune",
//                        authors: [Author(id: 1,
//                                         firstName: "Frank",
//                                         middleName: nil,
//                                         lastName: "Herbert")],
//                        awards: [])
//        WorkListItemView(work: work)
//    }
//}
