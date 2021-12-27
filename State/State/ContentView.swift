//
//  ContentView.swift
//  State
//
//  Created by Rafael Aviles Puebla on 13/09/21.
//

import SwiftUI

struct ContentView: View {
  @State private var counter = 0
  var body: some View {
    VStack(alignment: .leading, spacing: 10) {
      Label("Suscribe to my channel", systemImage: "hand.thumbsup.fill")
        .font(.largeTitle)
//        .labelStyle(IconOnlyLabelStyle())
      Text("Value: \(counter)")
      Button("Increase value") {
        counter += 1
      }
      Button(action: {
        print("Like to video")
      }, label: {
        Circle()
          .fill(Color.purple)
          .frame(width: 150, height: 150)
          .overlay(
            Image(systemName: "hand.thumbsup.fill")
              .foregroundColor(.white)
              .font(.system(size: 80))
          )
          .shadow(radius: 10)
      })
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
