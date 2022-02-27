//
//  MapManager.swift
//  Dnd-Planner
//
//  Created by Kierstyn Just on 2/27/22.
//

import Foundation

struct User {
    var username: String
    var milesAway: Int
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
    }
    
    deinit {}
    
    // get nearby users
    func getNearbyUsers() {

    }
}
