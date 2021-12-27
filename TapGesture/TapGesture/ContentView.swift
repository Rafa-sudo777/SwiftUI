//
//  ContentView.swift
//  TapGesture
//
//  Created by Rafael Aviles Puebla on 20/10/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    RoundedRectangle(cornerRadius: 20)
      .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
      .onTapGesture(count: 2) {
        print("Rectagle tapped")
      }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
