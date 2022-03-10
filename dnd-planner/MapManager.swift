//
//  MapManager.swift
//  Dnd-Planner
//
//  Created by Kierstyn Just on 2/27/22.
//

//Create classes to represent information and relationships in your assigned feature.
//Create unit tests to check your structures and classes.
//Create a screen to show how users will use your assigned feature.
//Document your progress.

import Foundation

class User: Identifiable {
    var username: String
    var milesAway: Int
    
    init(name: String, miles: Int) {
        username = name
        milesAway = miles
    }
    
    deinit {}
}

// ---- MapManager Functionality ----
// - get user's current location or specified location? (start w/ dummy location)
// - update location
// - update mile radius
// - get nearby users
// - user can specify if they're looking for party members to join their game or
//      looking to join a game
// - user can choose to message or add a nearby user in the list

// ---- Later functionality ----
// - Display current location on map

// ---- UI ----
// display list of users (in VStack?)
// buttons on each user for messaging/adding

class MapManager {
    var nearbyUsers: [User] = []
    var currentLocation: String  // user's current location
    var mileRadius: Int          // user selected mile radius
    
    init() {
        currentLocation = ""
        mileRadius = 0
        
        // sample data
        nearbyUsers.append(User(name: "Draco", miles: 2))
        nearbyUsers.append(User(name: "Ada", miles: 8))
        nearbyUsers.append(User(name: "Akuma", miles: 10))
        nearbyUsers.append(User(name: "Puu", miles: 12))
        nearbyUsers.append(User(name: "Zorro", miles: 45))
        nearbyUsers.append(User(name: "Lilith", miles: 45))
    }
    
    deinit {}
    
    // FUNCTIONS
    // getCurrentLocation
    // setMileRadius
    // getNearbyUsers (requires current location & radius)
    
}
