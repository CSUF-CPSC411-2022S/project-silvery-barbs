//
//  ContentView.swift
//  Dnd-PlannerTests
//
//  Created by csuftitan on 3/8/22.
//

import SwiftUI
//import User how do we import user file?


struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var email: String = ""
    @State var phonenumber: String = ""
    
    @State var DM_status = false
    @State var group_status = false
    
    //TODO need to figure out how to import the user file in order to do this
    
    var body: some View {
        //banner
        VStack {
            Text("User Account Creation")
                .font(.custom("Courier New", size: 30))
                .foregroundColor(Color.white)
                .padding(10)
                .background(Color.black)
                .cornerRadius(10)
            //user info
            VStack {
                Text("Name: ")
                    .font(.custom("Courier New", size: 20))
                    .foregroundColor(Color.white)
                    .padding(10)
                    .background(Color.black)
                    .cornerRadius(10)
                TextField("Name", text: $username)
                    .font(.custom("Arial", size: 20))
                    .frame(width: 250, alignment: .trailing)
            }
            VStack {
                Text("Password: ")
                    .font(.custom("Courier New", size: 20))
                    .foregroundColor(Color.white)
                    .padding(10)
                    .background(Color.black)
                    .cornerRadius(10)
                TextField("Password", text: $password)
                    .font(.custom("Arial", size: 20))
                    .frame(width: 250, alignment: .trailing)
            }
            VStack {
                Text("Email: ")
                    .font(.custom("Courier New", size: 20))
                    .foregroundColor(Color.white)
                    .padding(10)
                    .background(Color.black)
                    .cornerRadius(10)
                TextField("Email", text: $email)
                    .font(.custom("Arial", size: 20))
                    .frame(width: 250, alignment: .trailing)
            }
            VStack {
                Text("Phone Number: ")
                    .font(.custom("Courier New", size: 20))
                    .foregroundColor(Color.white)
                    .padding(10)
                    .background(Color.black)
                    .cornerRadius(10)
                TextField("Phone Number", text: $phonenumber)
                    .font(.custom("Arial", size: 20))
                    .frame(width: 250, alignment: .trailing)
            }
            VStack {
                Text("Looking to DM? ")
                    .foregroundColor(Color.white)
                    .padding(10)
                    .background(Color.black)
                    .cornerRadius(10)
                
                    Toggle("Looking to DM?", isOn: $DM_status)
                        .font(.custom("Courier New", size: 20))
                        .frame(width: 250, alignment: .trailing)
                
            }
            VStack {
                Text("Looking for a group? ")
                    .foregroundColor(Color.white)
                    .padding(10)
                    .background(Color.black)
                    .cornerRadius(10)
                
                    Toggle("Looking for a group?", isOn: $group_status)
                        .font(.custom("Courier New", size: 20))
                        .frame(width: 250, alignment: .trailing)
            }.padding()
        }
    }
}

struct Information: View {
    @Binding var username: String
    @Binding var password: String
    @Binding var email: String
    @Binding var phonenumber: String
    
    @Binding var DM_status: Bool
    @Binding var group_status: Bool
    
    var body: some View {
        Text(username)
        Text(password)
        Text(email)
        Text(phonenumber)
        
        //Text(DM_status)
        //Text(group_status)
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
