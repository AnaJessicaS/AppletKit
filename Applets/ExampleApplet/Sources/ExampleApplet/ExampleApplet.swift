import Applet

public struct ExampleApplet: Applet {
    public let id: String = "hello.world"
    public let title: String = "Hello World"

    public init() { }

    public var body: some View {
        ExampleAppletRootView()
    }
}
