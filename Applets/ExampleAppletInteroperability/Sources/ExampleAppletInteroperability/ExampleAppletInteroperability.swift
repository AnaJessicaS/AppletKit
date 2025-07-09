import Applet

public struct ExampleAppletInteroperability: Applet {
    public let id: String = "hello.world.interoperability"
    public let title: String = "Hello World Example Interoperability"

    public init() { }

    public var body: some View {
        ExampleAppletInteroperabilityRootView()
    }
}
