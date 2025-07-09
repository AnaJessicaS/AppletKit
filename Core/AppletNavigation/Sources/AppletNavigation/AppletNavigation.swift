import AppState
import SwiftUI

// MARK: - TODO: Sample code

public enum AppletTab: String, Sendable {
    case home
    case settings
}

extension Application {
    public var tab: State<AppletTab> {
        state(initial: .home)
    }
}

// MARK: END: Sample code -
