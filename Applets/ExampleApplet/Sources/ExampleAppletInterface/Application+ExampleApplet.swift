import AppState

extension Application {
    public var exampleAppletState: State<ExampleAppletState> {
        state(initial: ExampleAppletState())
    }
}
