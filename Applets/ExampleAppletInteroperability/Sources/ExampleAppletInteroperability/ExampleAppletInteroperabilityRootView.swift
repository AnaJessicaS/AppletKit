import AppletUI
import ExampleAppletInterface

struct ExampleAppletInteroperabilityRootView: View {
    @AppState(\.exampleAppletState) private var exampleAppletState: ExampleAppletState

    var body: some View {
        VStack {
            Text("Example Applet Interoperability!")
                .font(.title)
                .padding()

            Spacer()

            Text(exampleAppletState.exampleValue)
                .font(.title3)
                .padding()

            Spacer()
        }
        .safeAreaInset(edge: .bottom) {
            Button("Update") {
                let formattedTime: String = Date.now.formatted(date: .omitted, time: .standard)
                exampleAppletState.exampleValue = "Hello, \(formattedTime)! (ExampleAppletInteroperability)"
            }
            .padding(.bottom, 32)
        }
    }
}

#Preview {
    ExampleAppletInteroperabilityRootView()
}
