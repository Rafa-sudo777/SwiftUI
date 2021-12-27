//
//  ContentView.swift
//  Alert
//
//  Created by Rafael Aviles Puebla on 20/10/21.
//

import SwiftUI

struct ContentView: View {
  @State private var isPresented = false
  var body: some View {
    VStack {
      Text("Hello, world!")
        .padding()
      Button("Aceptar") {
        isPresented = true
      }
    }
    .alert(isPresented: $isPresented, content: {
      Alert(title: Text("Suscribe"), message: Text("New video every week"), primaryButton: .default(Text("Acept"), action: {
        print("Acepted")
      }), secondaryButton: .destructive(Text("Cancel"), action: {
        print("Canceled")
      }))
    })
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
