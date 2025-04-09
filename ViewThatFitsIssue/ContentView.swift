//
//  ContentView.swift
//  ViewThatFitsIssue
//
//  Created by Robb Böhnke on 09.04.25.
//

import SwiftUI

struct ContentView: View {
  @State var badExample: Bool = true

  var body: some View {
    ScrollView {
      VStack {
        // View with this width/height is ignored
        let a = Double(bitPattern: 0x403f555555555555)

        // Works as expected
        let b = Double(bitPattern: 0x403f555555555554)

        if badExample {
          ViewThatFits {
            Text("This string is used for layout?").frame(height: a).border(.green)

            Text("But this String draws?!").border(.red)
          }

        } else {
          ViewThatFits {
            Text("This draws as expected").frame(height: b).border(.green)

            Text("This doesn't").border(.red)
          }
          .border(.green)
        }
      }
      .safeAreaPadding() // Load bearing
      .border(.blue)

      Toggle("Use magic Value", isOn: $badExample)
        .padding()
    }
  }
}

#Preview {
  ContentView()
}
