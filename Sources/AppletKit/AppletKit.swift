import AppState
import AppletNavigation
import ExampleApplet
import ExampleAppletInteroperability
import SwiftUI

public struct AppletKitView: View {
    @AppState(\.tab) private var tab: AppletTab

    public var body: some View {
        TabView(selection: $tab) {
            ExampleApplet()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(AppletTab.home)

            ExampleAppletInteroperability()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(AppletTab.settings)
        }
    }
}

#Preview {
    AppletKitView()
}
