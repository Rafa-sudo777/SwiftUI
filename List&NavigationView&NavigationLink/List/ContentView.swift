//
//  ContentView.swift
//  List
//
//  Created by Rafael Aviles Puebla on 30/09/21.
//

import SwiftUI

private let house = [
  Device(tittle: "Laptop", imageName: "laptopcomputer"),
  Device(tittle: "Mac mini", imageName: "macmini"),
  Device(tittle: "Mac Pro", imageName: "macpro.gen3"),
  Device(tittle: "Displays", imageName: "display.2"),
  Device(tittle: "Apple TV", imageName: "appletv"),
  ]
private let work = [
  Device(tittle: "iPhone", imageName: "iphone"),
  Device(tittle: "iPad", imageName: "ipad"),
  Device(tittle: "Airpods", imageName: "airpods"),
  Device(tittle: "Apple Watch", imageName: "applewatch")
]

struct ContentView: View {
  var body: some View {
    NavigationView {
      List {
        Section(header: Text("HOME")) {
          // id nos ayuda a identificar el elemento ya que se le asigna un identificador unico
          ForEach(house, id: \.tittle) { device in
            NavigationLink(
              destination: Image(systemName: device.imageName),
              label: {
                Label(device.tittle, systemImage: device.imageName)
              })
          }
        }
        Section(header: Text("WORK")) {
          ForEach(work, id: \.tittle) { device in
            Label(device.tittle, systemImage: device.imageName)
          }
        }
      }
      .listStyle(SidebarListStyle())
      .navigationTitle("Menu")
      .navigationBarTitleDisplayMode(.large)
      .navigationBarHidden(false)
      .navigationBarItems(trailing: Button("Done", action: {
        print("haha")
      }))
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
