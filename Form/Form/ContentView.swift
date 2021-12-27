//
//  ContentView.swift
//  Form
//
//  Created by Rafael Aviles Puebla on 30/09/21.
//

import SwiftUI

struct ContentView: View {
  
  @State private var deviceTxt = "iPhone 11 Pro"
  @State private var wifiToggle = true
  @State private var dateSelected = Date()
  @State private var colorSeleted = Color.blue
  
  var body: some View {
    Form {
      Section(header: Text("Settings"), content: {
        TextField("DeviceName", text: $deviceTxt)
        Toggle("Wifi", isOn: $wifiToggle)
      })
      Section(header: Text("Account"),
              footer:
                HStack {
                  Spacer()
                  Label("version", systemImage: "iphone")
                  Spacer()
                }
      ){
        DatePicker("Date", selection: $dateSelected)
        ColorPicker("Pick a color", selection: $colorSeleted)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
