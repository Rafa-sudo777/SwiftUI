//
//  ContentView.swift
//  ColorPicker
//
//  Created by Rafael Aviles Puebla on 25/09/21.
//

import SwiftUI

struct ContentView: View {
  @State private var seletedColor: Color = .black
  var body: some View {
    Form {
      Rectangle()
        .foregroundColor(seletedColor)
        .frame(width: 320, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .cornerRadius(10)
      ColorPicker("Pick a color", selection: $seletedColor)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
