import SwiftUI

struct makeList: View {
    var body: some View {
        
        NavigationView {
            List {
                Section(header: Text("專輯")
                    .fontWeight(.bold)) {
                    ForEach(0..<Aqours.count) { (index) in
                        NavigationLink(destination: makeSongDetail(song: Aqours[index])) {
                            makeListRow(song: Aqours[index])
                        }
                    }
                }
                
                Section(header: Text("單曲")
                    .fontWeight(.bold)) {
                    ForEach(0..<Solos.count) { (index) in
                        NavigationLink(destination: makeSongDetail(song: Solos[index])) {
                            makeListRow(song: Solos[index])
                        }
                    }
                }
            }
            .navigationBarTitle("Songs")
            
        }
        
    }
}

struct makeList_Previews: PreviewProvider {
    static var previews: some View {
        makeList()
            
    }
}
