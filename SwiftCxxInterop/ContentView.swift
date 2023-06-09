import CxxLogic
import SwiftUI

struct ContentView: View {
    let calculator = Calculator()
    @State var value = 0
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!") + Text("\(value)")
        }
        .padding()
        .onAppear() {
            value = calculator.calculate()
        }
    }

    init() {
        let url = URL(string: "https://foo.bar")!
        print(url)

        try? url.bookmarkData()
    }
}

#Preview {
    ContentView()
}
