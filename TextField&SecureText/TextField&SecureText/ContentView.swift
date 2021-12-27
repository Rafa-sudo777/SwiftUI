//
//  ContentView.swift
//  TextField&SecureText
//
//  Created by Rafael Aviles Puebla on 24/09/21.
//

import SwiftUI

struct ContentView: View {
  @State private var userText = ""
  @State private var password = ""
  var body: some View {
    VStack {
      TextField("Input an user", text: $userText)
        .keyboardType(.emailAddress)
        .disableAutocorrection(true)
        .padding(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .font(.headline)
        .background(Color.gray.opacity(0.45))
        .cornerRadius(10)
        .padding(.horizontal, 40)
        .padding(.top, 20)
        .onChange(of: userText, perform: { value in
          print("user: \(value)")
        })
      SecureField("Password", text: $password)
        .cornerRadius(10)
        .autocapitalization(.none)
        .padding(10)
        .font(.headline)
        .background(Color.gray.opacity(0.45))
        .cornerRadius(10)
        .padding(.horizontal, 40)
        .disableAutocorrection(true)
        .onChange(of: password, perform: { pass in
          print("pass: \(pass)")
        })
      //Spacer Ocupa todo el espacio disponible
      Spacer()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
