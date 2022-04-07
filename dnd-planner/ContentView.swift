//
//  ContentView.swift
//  dnd-planner
//
//  Created by Kierstyn Just on 3/10/22.
//

import SwiftUI


struct ContentView: View {
    @StateObject var manager = SchedulingManager ()
    var body: some View {
        TabView {
            SchedulingList()
                .tabItem {
                    Image (systemName: "person.2.square.stack.fill")
                    Text("List of Participants")
                }
            /*SchedulingInfo()
                .tabItem {
                    Image (systemName: "info")
                    Text("Scheduling Instruction")
                }
            AddPerson()
                .tabItem {
                    Image(systemName: "plus.square.on.square")
                    Text("Add to List")
                }*/
            
        }
        
        .environmentObject(manager)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
