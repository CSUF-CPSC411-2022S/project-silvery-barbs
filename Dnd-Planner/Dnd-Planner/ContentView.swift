//
//  ContentView.swift
//  Dnd-PlannerTests
//
//  Created by csuftitan on 3/8/22.
//

import SwiftUI
//import User how do we import user file?


struct ContentView: View {
    @State private var DM_status = false
    @State private var group_status = false
    @State private var text = "Are you looking to change your player or group status?"
    
    //TODO need to figure out how to import the user file in order to do this
    
    var body: some View {
        VStack {
            Toggle("DM Status", isOn: $DM_status)
            Toggle("Group Status", isOn: $group_status).toggleStyle(SwitchToggleStyle(tint: Color.blue))
        } .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
