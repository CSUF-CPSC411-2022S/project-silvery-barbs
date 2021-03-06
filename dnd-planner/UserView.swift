//
//  UserView.swift
//  Dnd-PlannerTests
//
//  Created by csuftitan on 3/8/22.
//

import SwiftUI

struct UserView: View {
    @StateObject var manager = User_Manager()
    @StateObject var user = User(username: "", password: "", email: "", phonenumber: "", DM_status: false, group_status: false)
    @State var username: String = ""
    @State var password: String = ""
    @State var email: String = ""
    @State var phonenumber: String = ""
    @State var DM_status: Bool = false
    @State var group_status: Bool = false
    
    var body: some View {
        GeometryReader{ geometry in
            NavigationView{
                //banner
                VStack {
                    Image("DnD-Symbol")
                        .resizable()
                        .scaledToFit()
                        .frame(width:300)
                    
                    Text("User Account Creation")
                        .font(.custom("System", size: 30))
                        .foregroundColor(Color.white)
                        .padding(15)
                        .background(Color.gray)
                        .cornerRadius(10)
                    //user info
                    HStack {
                        Text("Username: ")
                            .frame(width: geometry.size.width/3, alignment: Alignment.leading)
                            
                        TextField("Username Here", text: $username)
                            .font(.custom("System", size: 14))
                            .frame(width: geometry.size.width/3, alignment: Alignment.trailing)

                    }
                    HStack {
                        Text("Password: ")
                            .frame(width: geometry.size.width/3, alignment: Alignment.leading)
                        
                        TextField("Password Here", text: $password)
                            .font(.custom("System", size: 14))
                            .frame(width: geometry.size.width/3, alignment: Alignment.trailing)
                    }
                    HStack {
                        Text("Email: ")
                            .frame(width: geometry.size.width/3, alignment: Alignment.leading)
                        
                        TextField("Email Here", text: $email)
                            .font(.custom("System", size: 14))
                            .frame(width: geometry.size.width/3, alignment: Alignment.trailing)
                    }
                    HStack {
                        Text("Phone Number: ")
                            .frame(width: geometry.size.width/3, alignment: Alignment.leading)
                            
                        TextField("Phone Number Here", text: $phonenumber)
                            .font(.custom("System", size: 14))
                            .frame(width: geometry.size.width/3, alignment: Alignment.trailing)
                    }
                    HStack {
                        Text("Looking to DM? ")
                            .frame(width: geometry.size.width/3, alignment: Alignment.leading)
                        
                            Toggle("", isOn: $DM_status)
                                .font(.custom("System", size: 14))
                                .frame(width: geometry.size.width/3, alignment: .trailing)
                    }
                    HStack {
                        Text("Looking for a group? ")
                            .frame(width: geometry.size.width/3, alignment: Alignment.leading)
                        
                            Toggle("", isOn: $group_status)
                            .font(.custom("System", size: 14))
                            .frame(width: geometry.size.width/3, alignment: .trailing)
                    }
                    HStack{
                        Button(action: {
                            //Creates accounts and appends it to the User_Manager
                            if let valid_username = String?(username), let valid_password = String?(password){
                                user.username = username
                                user.password = password
                                user.email = email
                                user.phonenumber = phonenumber
                                user.DM_status = DM_status
                                user.group_status = group_status
                                
                                print("Account Created Successfully")
                                
                                manager.user_list.append(user)
                             }
                             else {
                                print("Please Try Again")
                             }
                        })  {
                            Text("Create Account")
                                .bold()
                                .font(.custom("System", size: 14))
                                .padding(5)
                                .foregroundColor(.black)
                                .background(Color.red)
                                .border(Color.red)
                                .cornerRadius(10)
                            }
                    }
                    //Goes to another page after clicking login
                    NavigationLink(destination: User_Information()){
                        Text("Login")
                            .bold()
                            .font(.custom("System", size: 14))
                            .padding(5)
                            .foregroundColor(.black)
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                }
            }.environmentObject(manager)
        }
    }
}

struct User_Information: View{
    @StateObject var user = User(username: "", password: "", email: "", phonenumber: "", DM_status: false, group_status: false)
    @State var username: String = ""
    @State var password: String = ""
    @State var email: String = ""
    @State var phonenumber: String = ""
    @State var DM_status: Bool = false
    @State var group_status: Bool = false
    
    var body: some View{
    
        NavigationView{
            VStack {
                Text("User Information")
                    .font(.headline)
                VStack {
                    HStack {
                        Text("Username: ")
                            //.modifier(TextLabel())
                        TextField("Username", text: $username)
                            //.modifier(TextBox())
                        Spacer()
                    }
                    HStack {
                        Text("Password: ")
                            //.modifier(TextLabel())
                        TextField("Password", text: $password)
                            //.modifier(TextBox())
                        Spacer()
                    }
                    HStack {
                        Text("Email: ")
                            //.modifier(TextLabel())
                        TextField("Email", text: $email)
                            //.modifier(TextBox())
                        Spacer()
                    }
                    HStack {
                        Text("Phone Number: ")
                            //.modifier(TextLabel())
                        TextField("Phone Number", text: $phonenumber)
                            //.modifier(TextBox())
                        Spacer()
                    }
                    HStack {
                        Text("DM Status: ")
                            //.modifier(TextLabel())
                        Toggle("", isOn: $DM_status)
                            //.modifier(TextBox())
                        Spacer()
                    }
                    HStack {
                        Text("Group Status: ")
                            //.modifier(TextLabel())
                        Toggle("", isOn: $group_status)
                            //.modifier(TextBox())
                        Spacer()
                    }
                }
            }
            
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
    
struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
