//
//  ContentView.swift
//  ProgressView
//
//  Created by Rafael Aviles Puebla on 25/09/21.
//

import SwiftUI

struct ContentView: View {
  @State private var progress = 0.0
  var body: some View {
    VStack {
      ProgressView(value: progress)
        .scaleEffect(1.2)
        .padding(.horizontal, 60)
      Button("Charge") {
        progress += 0.15
      }.padding(.top, 30)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
