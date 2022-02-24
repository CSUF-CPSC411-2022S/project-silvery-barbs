//
//  User.swift
//  Dnd-Planner
//
//  Created by csuftitan on 2/24/22.
//

import Foundation

class User {
    var username: String
    //how do you hash passwords and create a secure database???
    var password: String
    var email: String?
    var phonenumber: String?
    
    var DM_status: Bool
    var group_status: Bool
    var verified: Bool
    //TODO
    //how do you find a user location??? need a var for that
    
    //full user account
    init(username: String, password: String, email: String, phonenumber: String, DM_status: Bool, group_status: Bool){
        self.username = username
        self.password = password
        self.email = email
        self.phonenumber = phonenumber
        
        self.DM_status = DM_status
        self.group_status = group_status
        
        self.verified = false
    }
    
    //user sans email
    init(username: String, password: String, phonenumber: String, DM_status: Bool, group_status: Bool){
        self.username = username
        self.password = password
        self.email = nil
        self.phonenumber = phonenumber
        
        self.DM_status = DM_status
        self.group_status = group_status
        
        self.verified = false
    }
    
    //user sans phone number
    init(username: String, password: String, email: String, DM_status: Bool, group_status: Bool){
        self.username = username
        self.password = password
        self.email = email
        self.phonenumber = nil
        
        self.DM_status = DM_status
        self.group_status = group_status
        
        self.verified = false
    }
    
    //user sans any verification
    init(username: String, password: String, DM_status: Bool, group_status: Bool){
        self.username = username
        self.password = password
        self.email = nil
        self.phonenumber = nil
        
        self.DM_status = DM_status
        self.group_status = group_status
        
        self.verified = false
    }
    
    //TODO
    //create a function to verify users
    //create function that allows for users to set group status
    //create functions to add emails and phone numbers to already created accounts
    
}
