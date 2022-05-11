//
//  User.swift
//  Dnd-Planner
//
//  Created by csuftitan on 2/24/22.
//

import Foundation

class User: ObservableObject, Identifiable {
    
    @Published var username: String
    @Published var password: String
    @Published var email: String?
    @Published var phonenumber: String?
    
    @Published var DM_status: Bool
    @Published var group_status: Bool
    @Published var verified: Bool
    
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
}

class User_Manager: ObservableObject {
    @Published var user_list: [User] = []
    
    init(){
        user_list.append(User(username: "dannyb", password: "sticksandstones", DM_status: false, group_status: true))
        user_list.append(User(username: "crystalline", password: "sorrynotsorry", email: "lalafelsarecute@gmail.com", DM_status: false, group_status: true))
    }
}
