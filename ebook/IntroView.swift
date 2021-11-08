import SwiftUI

struct IntroView: View {
    var body: some View {
        
            VStack{
            ScrollView(.horizontal) {
                HStack {
                    ForEach(1..<5) { (index) in
                    Image("furi0\(index)")
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 200)
                        .clipped()
                    }
                }
            }
                Text("香港男歌手、詞曲作家及唱片監製，現屆香港演藝人協會副會長，香港永久居民，2002年起在香港發展，被稱為E世代全才唱作人，擅長作詞、作曲、編曲、錄音、製作及演唱，張敬軒是少數內地出身轉往香港發展而成功的藝人。")
                    .fontWeight(.thin)
            }
                    .navigationBarTitle("張敬軒")
        
}
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
