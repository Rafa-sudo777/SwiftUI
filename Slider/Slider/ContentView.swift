//
//  ContentView.swift
//  Slider
//
//  Created by Rafael Aviles Puebla on 26/09/21.
//

import SwiftUI

struct ContentView: View {
  @State private var isEditing = false
  @State private var value = 0.0
  var body: some View {
    VStack(alignment: .leading, spacing: 20, content: {
            Slider(value: $value,
                   in: 0...5, step: 1,
                   onEditingChanged: { editing in
                    isEditing = editing
                   }, minimumValueLabel: Text("Min"),
                   maximumValueLabel: Text("Max")) {}
      HStack {
        Text("iPhones in the bag:")
          .font(.headline)
        Text("\(Int(value))")
          .foregroundColor(isEditing ? .blue : .black)
          .font(.headline)
      }
    }).padding(30)
    .padding(.bottom, 530)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
