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
        VStack {
            EditButton()
            List {
                ForEach(manager.scheduling) {
                    schedule in
                    VStack (alignment: .leading) {
                        Text(schedule.name)
                            .font(.largeTitle)
                        Text(schedule.availability)
                            .font(.caption)
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
    }
}

struct SchedulingInfo: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section (header: Text("How to add yourself to the list?")){
                        NavigationLink(destination: Text("Tell us your first and last name")){
                            Text("Your name")
                        }
                        NavigationLink(destination: Text("Tell us your availability in the format of FROM _____ am/pm TO _____ am/pm")){
                            Text("Your availability")
                        }
                    }
                    Section (header: Text("How to modify the list?")) {
                        NavigationLink(destination: Text("You can modify the list by pressing the EDIT button at the top!")){
                            Text("Personalizing list")
                        }
                        DisclosureGroup(content: {
                            NavigationLink(destination: Text("After pressing the edit, press the red - button, then press the DELETE button")){
                                Text("Deleting")
                            }
                            NavigationLink(destination: Text("After pressing the edit, hold the 3 horizonal line to drag the list up and down")){
                                Text("Dragging")
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
                    Text("Person Submission")
                        .bold()
                        .font(.largeTitle)
                }
                .padding(.bottom, 30)
                
                HStack {
                    Text("Person Name")
                        .bold()
                    Spacer()
                }
                .padding(.bottom, 5)
                
                HStack {
                    TextField("Person Name", text: $personName)
                        .modifier(TextEntry())
                    Spacer()
                }
                .padding(.bottom, 20)
                
                HStack {
                    Text("Person Availability")
                        .bold()
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
                    Text("Submit")
                        .modifier(ButtonDesign())
                }
                Spacer()
            }
            .padding()
        }
    }
}
