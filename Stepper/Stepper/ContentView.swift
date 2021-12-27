//
//  ContentView.swift
//  Stepper
//
//  Created by Rafael Aviles Puebla on 26/09/21.
//

import SwiftUI

struct ContentView: View {
  @State private var iPhoneCounter = 0
  @State private var showAlert = false
  var body: some View {
    Form {
      Stepper("iPhone: \(iPhoneCounter)") {
        iPhoneCounter += 1
        if iPhoneCounter > 5 {
          showAlert = true
          iPhoneCounter -= 1
        }
      } onDecrement: {
        iPhoneCounter -= 1
        if iPhoneCounter <= 0 {
          iPhoneCounter += 1
        }
      }
      .alert(isPresented: $showAlert, content: {
        let title = "You reach the limit"
        let message = "You only be able to buy \(iPhoneCounter) iPhones at max"
        return Alert(title: Text(title), message: Text(message), dismissButton: .default(Text("Done")))
      })
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
