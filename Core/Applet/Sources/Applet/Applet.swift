import AppletUI

public protocol Applet: Identifiable, Equatable, View {
    var id: String { get }
    var title: String { get }

    init()
}
