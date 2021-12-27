//
//  ContentView.swift
//  Stack
//
//  Created by Rafael Aviles Puebla on 13/09/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 10) {
      Text("Following")
        .font(.largeTitle)
        .bold()
      Text("Recommended Chanels")
        .foregroundColor(.gray)
        .autocapitalization(.allCharacters)
      HStack {
        Rectangle()
          .frame(width: 110, height: 70, alignment: .leading)
          .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        VStack(alignment: .leading, spacing: 5) {
          HStack {
            Circle()
              .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
              .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Text("username")
              .font(.headline)
          }
          Text("streamig for programming \nJust Talking")
            .foregroundColor(.gray)
        }
      }
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      Group {
        ContentView()
        ContentView()
          .preferredColorScheme(.dark)
          .previewDevice("iPhone 8")
      }
    }
}
