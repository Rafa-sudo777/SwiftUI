//
//  ContentView.swift
//  ContextMenu
//
//  Created by Rafael Aviles Puebla on 20/10/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Text("Hello, world!")
      .padding()
      .contextMenu(ContextMenu(menuItems: {
        Button("Swift UI") {
          print("Swift UI")
        }
        Text("XCode")
        Button(action: {
          print("3 Option")
        }, label: {
          Label("Swift", systemImage: "swift")
        })
      }))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
