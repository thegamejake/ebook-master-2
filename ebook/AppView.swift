import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            makeList()
                .tabItem {
                Image(systemName: "music.house.fill")
                Text("Songs")
                }
            ContentView()
                .tabItem {
                Image(systemName: "info.circle.fill")
                Text("About")
            }
        }
        .accentColor(Color(red: 1, green: 120/255, blue: 150/255))
    }
}
    
struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
