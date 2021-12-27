//
//  ContentView.swift
//  DragGesture
//
//  Created by Rafael Aviles Puebla on 20/10/21.
//

import SwiftUI

struct ContentView: View {
  @State private var dragOffset: CGSize = .zero
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
          .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
          // sirve para desplazarlo hacia arriba
          .offset(x: dragOffset.width, y: dragOffset.height)
          .gesture(
            DragGesture()
              .onChanged({ value in
                self.dragOffset = value.translation
              })
              .onEnded({ _ in
                withAnimation(.spring()) {
                  self.dragOffset = .zero
                }
              })
          )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
