//
//  ContentView.swift
//  LazyVGrid
//
//  Created by Rafael Aviles Puebla on 27/09/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    let elements = 1...500
    let gridItems = [GridItem(.fixed(100)),
                     // Puede variar el tamaño
                     GridItem(.fixed(100)),
                     GridItem(.fixed(100))]
    // ScrollView Por defecto es vertical
    ScrollView(.horizontal) {
      //LazyGrid lo que hace es que se optimiza la memoria ya que solo muestra en el grid los elementos que se muestran y esto significa que los demas elementos no se cargan en memoria
      LazyHGrid(rows: gridItems, content: {
        ForEach(elements, id: \.self) { elements in
          VStack {
            Circle()
              .frame(height: 40)
            Text("\(elements)")
              .bold()
          }
        }
      })
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
