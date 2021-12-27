//
//  ContentView.swift
//  ActionSheet
//
//  Created by Rafael Aviles Puebla on 20/10/21.
//

import SwiftUI

struct ContentView: View {
  
  @State private var isPresented = false
  
  var body: some View {
    VStack(alignment: .center, spacing: 40) {
      Text("Suscribe to Swift Beta")
        //.padding()
      Button("Aceptar") {
        isPresented = true
      }
    }
    .actionSheet(isPresented: $isPresented, content: {
      ActionSheet(title: Text("Aprende Swift UI"),
                  message: Text("Choose an option"),
                  buttons: [.default(Text("Swift UI"),
                                     action: {
                                      print("Swift UI")
                                     }),
                            .default(Text("Xcode"),
                                     action: {
                                      print("Xcode")
                                     }),
                            .destructive(Text("Cancel"),
                                         action: {
                                          print("Nothing selected")
                                         })])
    })
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
