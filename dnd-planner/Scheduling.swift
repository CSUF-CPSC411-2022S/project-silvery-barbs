//
//  Scheduling.swift
//  Dnd-Planner
//
//  Created by Minkyu Park on 2/25/22.
//

import SwiftUI


struct SchedulingInfo: View {
    var body: some View {
        VStack {
            List {
                Section (header: Text ("Scheduling")){
                    Text ("Name")
                    Text ("Start Time")
                    Text ("End Time")
                }
            }
            Spacer()
        }
    }
}
