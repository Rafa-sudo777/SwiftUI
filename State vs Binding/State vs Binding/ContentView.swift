//
//  ContentView.swift
//  State vs Binding
//
//  Created by Rafael Aviles Puebla on 20/10/21.
//

import SwiftUI

struct ContentView: View {
  @State private var counter = 0
    var body: some View {
      CounterView(counter: $counter)
    }
}
struct CounterView: View {
  // Binding se usa para poder mutar una propiedad que esta en otra struct (vista)
  @Binding var counter: Int
  var body: some View {
    VStack {
      Text("\(counter)")
        .font(.largeTitle)
      Button("Increse") {
        counter += 1
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
