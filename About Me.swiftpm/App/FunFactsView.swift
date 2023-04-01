/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct FunFactsView: View {

    @State private var funFact = "hahahaha!" // ✅ var, But I don't know why we use 'private' Keyword..!
    var body: some View {
        VStack {
            Text("Fun Facts")
                .font(.largeTitle)
                .fontWeight(.bold)
                        
            Text(funFact)
                .padding()
                .font(.title)
                .frame(minHeight: 400)

            Button("Show Random Fact") { // Button("title") {act} <- this is closure
                funFact = information.funFacts.randomElement()!
            }
        }
        .padding()
    }
}

struct FunFactsView_Previews: PreviewProvider { // Preview
    static var previews: some View {
        FunFactsView()
    }
}
