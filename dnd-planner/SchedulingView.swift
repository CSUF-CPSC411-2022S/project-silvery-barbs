//
//  ShedulingView.swift
//  Dnd-Planner
//
//  Created by Minkyu Park on 3/8/22.
//
import Foundation
import SwiftUI


struct ShedulingView: View {
    @StateObject var scheduling = Scheduling(name: "", startTime: 0, endTime:  0)
    @SceneStorage ("Name") var name: String = ""
    @SceneStorage ("Start Time") var startTime: String = ""
    @SceneStorage ("End Time") var endTime: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Scheduling")
                    .font(.custom("Courier New", size: 30))
                    .bold()
                    .padding()
                    .foregroundColor(.white)
                    .border(Color.white)
                    .background(Color.black)
                    .cornerRadius(40)
                VStack {
                    HStack {
                        Text("Name: ")
                            .frame(width: 50, alignment: .trailing)
                            .padding()
                            .foregroundColor(.black)
                            .border(Color.black)
                            .cornerRadius(10)
                        TextField("Name", text: $name)
                            .frame(width: 250, alignment: .trailing)
                            .padding()
                            .border(Color.black)
                            .cornerRadius(10)
                    }
                    HStack {
                        Text("Time: ")
                            .frame(width: 50, alignment: .trailing)
                            .padding()
                            .border(Color.black)
                            .cornerRadius(10)
                        TextField("Start Time", text:$startTime)
                            .padding()
                            .border(Color.black)
                            .cornerRadius(10)
                        TextField("End Time", text: $endTime)
                            .padding()
                            .border(Color.black)
                            .cornerRadius(10)
                    }
                }
                .padding(.bottom, 30)
                Spacer()
                
                VStack {
                    Text("Available Schedule")
                        .font(.custom("Courier New", size: 20))
                    HStack (spacing: 0) {
                        Text("Name: ")
                        TextField(" Name", text: $name)
                            .padding(.leading, 100)
                    }.padding(.leading, 10)
                    HStack (spacing: 0) {
                        Text("Available From: ")
                        TextField(" From", text: $startTime)
                            .padding(.leading, 35)
                    }.padding(.leading, 10)
                    HStack (spacing: 0) {
                        Text("Available Until: ")
                        TextField(" Until", text: $endTime)
                            .padding(.leading, 38)
                    }.padding(.leading, 10)
                }
                .padding()
                .border(Color.black)
                .cornerRadius(10)
                
                Spacer()
                HStack {
                    Button (action: {
                        SchedulingInfo()
                    }) {
                        Text("Submit")
                            .bold()
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.black)
                            .border(Color.white)
                            .cornerRadius(40)
                    }
                }
            }
        }
    }
}

struct Information: View {
    @Binding var name: String
    @Binding var startTime: String
    @Binding var endTime: String
    
    var body: some View {
        Text(name)
        Text(startTime)
        Text(endTime)
    }
}

struct ShedulingView_Previews: PreviewProvider {
    static var previews: some View {
        ShedulingView()
    }
}



