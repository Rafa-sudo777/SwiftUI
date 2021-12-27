//
//  ContentView.swift
//  DatePicker
//
//  Created by Rafael Aviles Puebla on 25/09/21.
//

import SwiftUI

struct ContentView: View {
  @State private var currentDate = Date()
  var body: some View {
    Form {
      DatePicker("Pick a date",
                 selection: $currentDate,
                 in:
                  // Indica que se puede seleccionar una fecha apartir de la fecha actual en adelante
                  Date()...,
                 displayedComponents: .date)
      Text(currentDate, style: .date)
        .bold()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
