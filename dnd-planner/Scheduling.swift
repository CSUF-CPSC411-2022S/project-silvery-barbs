//
//  Scheduling.swift
//  Dnd-Planner
//
//  Created by Minkyu Park on 2/25/22.
//

import Foundation

class SchedulingManager: ObservableObject {
    @Published var scheduling: [Schedule] = []
    init() {
        scheduling.append(Schedule(name: "Ray", availability: "meet with Kally from 7 pm to 10 pm"))
        scheduling.append(Schedule(name: "Kally", availability: "meet with Ray from 7 pm to 10 pm"))
    }
}

struct Schedule: Identifiable {
    var id = UUID()
    var name: String
    var availability: String
}



