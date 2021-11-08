import SwiftUI

struct makeListRow: View {
    
    var song: makeSong
    var body: some View {
        HStack {
        Image(song.name)
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80)
            .clipped()
            .clipShape(Circle())
        VStack(alignment: .leading) {
            Text(song.name)
                .fontWeight(.medium)
            Text(song.singer)
                .font(.footnote)
                .fontWeight(.thin)
            }
        Spacer()
        }
    }
}

struct makeListRow_Previews: PreviewProvider {
    static var previews: some View {
        makeListRow(song: songs[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
