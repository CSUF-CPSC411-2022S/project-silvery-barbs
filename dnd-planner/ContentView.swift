//
//  ContentView.swift
//  dnd-planner
//
//  Created by Kierstyn Just on 3/10/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var manager = SchedulingManager()
    var body: some View {
        TabView {
            UserView()
                .tabItem{
                    Image(systemName: "person")
                    Text("User Profile")
                }
            NearbyUsersView()
                .tabItem{
                    Image(systemName: "person.3")
                    Text("Nearby Users")
                }
            SchedulingList()
                .tabItem{
                    Image(systemName: "calendar")
                    Text("Scheduling List")
                }
        }
        .environmentObject(manager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
