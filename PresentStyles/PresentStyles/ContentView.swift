//
//  ContentView.swift
//  PresentStyles
//
//  Created by Rafael Aviles Puebla on 01/10/21.
//

import SwiftUI

struct ContentView: View {
  @State private var isPresented = false
    var body: some View {
      VStack {
        Text("Hello, world!")
            .padding()
        Button("Show View 2") {
          isPresented = true
        }
      }
      .sheet(isPresented: $isPresented,
                       onDismiss: {
                        isPresented = false
                       },
                       content: {
                        ZStack {
                          Color.red.ignoresSafeArea()
                          Button("Welcome to View 2") {
                            isPresented = false
                          }
                        }
                       })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
