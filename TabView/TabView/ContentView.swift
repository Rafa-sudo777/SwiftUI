//
//  ContentView.swift
//  TabView
//
//  Created by Rafael Aviles Puebla on 30/09/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      RoundedRectangle(cornerRadius: 20)
        .padding()
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
      RoundedRectangle(cornerRadius: 20)
        .padding()
        .foregroundColor(.green)
      HomeView()
        .tabItem {
          Image(systemName: "house.fill")
          Text("Home")
        }
      ProfileView()
        .tabItem {
          Image(systemName: "person.crop.circle.fill")
          Text("Profile")
        }
    }
    .accentColor(.purple)
    .frame(height: 500)
    .tabViewStyle(PageTabViewStyle())
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
  var body: some View {
    VStack {
      Image(systemName: "house.fill")
        .resizable()
        .scaledToFit()
        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
      Text("Home")
        .padding(.top, 40)
    }
  }
}

struct ProfileView: View {
  var body: some View {
    Text("Profile")
  }
}
