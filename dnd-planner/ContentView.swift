//
//  ContentView.swift
//  dnd-planner
//
//  Created by Kierstyn Just on 3/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, world!")
//            .padding()
        TabView {
            NearbyUsersView()
                .tabItem{
                    Image(systemName: "person.3")
                    Text("Nearby Users")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
