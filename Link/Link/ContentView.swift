//
//  ContentView.swift
//  Link
//
//  Created by Rafael Aviles Puebla on 26/09/21.
//

import SwiftUI

struct ContentView: View {
  private var link = "https://www.swiftbeta.com"
  var body: some View {
    Link(destination: URL(string: link)!,
         label: {
          //Label se utiliza para usarlo con un icono
          Label("Settings", systemImage: "gear")
            .font(.headline)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(6)
         })
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
