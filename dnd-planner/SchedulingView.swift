//
//  ShedulingView.swift
//  Dnd-Planner
//
//  Created by Minkyu Park on 3/8/22.
//

import SwiftUI

struct SchedulingList: View {
    @EnvironmentObject var manager: SchedulingManager
    var body: some View {
        NavigationView {
            VStack {
                Text("List of Participants")
                    .bold()
                    .padding()
                HStack{
                    NavigationLink(destination: SchedulingInfo()) {
                        Text("Information")
                    }
                    .padding()
                    NavigationLink(destination: AddPerson()) {
                        Text("Add")
                    }
                    .padding()
                    EditButton()
                        .padding()
                }
                
                List {
                    ForEach(manager.scheduling) {
                        schedule in
                        VStack (alignment: .leading) {
                            Text(schedule.name)
                                .font(.headline)
                                .padding(2)
                            Text(schedule.availability)
                                .font(.subheadline)
                                .padding(2)
                        }
                    }
                    .onDelete {
                        offset in
                        manager.scheduling.remove(atOffsets: offset)
                    }
                    .onMove {
                        offset, index in
                        manager.scheduling.move(fromOffsets: offset, toOffset: index)
                    }
                }
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
        }
    }
}

struct SchedulingInfo: View {
    var body: some View {
        Image("DnD-Symbol")
            .resizable()
            .scaledToFit()
            .frame(width:300)
        NavigationView {
            VStack {
                List {
                    Section (header: Text("How to add schedule or notes to the list?")){
                        NavigationLink(destination: Text("In the title field, enter a person's name or title you wish to store.")){
                            Text("Title Field")
                        }
                        NavigationLink(destination: Text("In the availability / notes field, enter information you wish to store.")){
                            Text("Availability / Notes")
                        }
                    }
                    Section (header: Text("How to modify the list?")) {
                        NavigationLink(destination: Text("You can modify the list by pressing the EDIT button at the top! Once finished, press DONE.")){
                            Text("Personalizing the List")
                        }
                        DisclosureGroup(content: {
                            NavigationLink(destination: Text("Press EDIT, press the red (-) button, then press the DELETE button. Once finished, press DONE.")){
                                Text("Deleting the List")
                            }
                            NavigationLink(destination: Text("Press EDIT, hold the 3 horizonal line on the right and order the list up / down. Once finished, press DONE.")){
                                Text("Ordering the List")
                            }
                        }){
                            Text("Button functions")
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

struct AddPerson: View {
    @SceneStorage("personName") var personName: String = ""
    @SceneStorage("personAvailability") var personAvailability: String = ""
    @EnvironmentObject var manager: SchedulingManager
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Adding to the List")
                        .font(.custom("System", size: 30))
                        .padding()
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
                .padding(.bottom, 30)
                
                HStack {
                    Text("Title")
                        .bold()
                        .padding(5)
                        .background(Color.gray)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                    Spacer()
                }
                .padding(.bottom, 5)
                
                HStack {
                    TextField("Enter Title", text: $personName)
                        .modifier(TextEntry())
                    Spacer()
                }
                .padding(.bottom, 20)
                
                HStack {
                    Text("Availability / Note")
                        .bold()
                        .padding(5)
                        .background(Color.gray)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                    Spacer()
                }
                .padding(.bottom, 5)
                
                TextEditor(text: $personAvailability)
                    .modifier(TextEntry())
                    .padding(.bottom, 30)
                Button(action: {
                    manager.scheduling.append(Schedule(name: personName, availability: personAvailability))
                    personName = ""
                    personAvailability = ""
                }) {
                    Text("Add to List")
                        .modifier(ButtonDesign())
                }
                Spacer()
            }
            .padding()
        }
    }
}
