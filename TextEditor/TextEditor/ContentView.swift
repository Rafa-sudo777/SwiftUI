//
//  ContentView.swift
//  TextEditor
//
//  Created by Rafael Aviles Puebla on 13/09/21.
//

import SwiftUI

struct ContentView: View {
  
  @State private var userText = "Write something..."
  @State private var counter = 0
  @State private var firstTime = true
  var body: some View {
    VStack {
      TextEditor(text: $userText)
        .font(.largeTitle)
        .autocapitalization(.none)
        .foregroundColor(.gray)
        .onChange(of: userText, perform: { value in
          counter = userText.count
        })
        .onTapGesture {
          if firstTime {
            userText = ""
            firstTime = false
          }
        }
        .padding(.top, 10)
      Text("Characters: ")
        .bold()
        + Text("\(counter)")
        .foregroundColor(userText.count > 50 ? .red : .black)
    }.padding(.bottom, 190)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
