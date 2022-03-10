//
//  NearbyUsersView.swift
//  Dnd-Planner
//
//  Created by Kierstyn Just on 3/8/22.
//

import SwiftUI

// TO ADD
// - button or tetfield to change location
// - something to change mile radius (maybe slider or spinner)
// - NavigationTitle or dropdowm to separate users looking to join a party
//    or looking for a user to join their party

struct NearbyUsersView: View {
    var manager = MapManager()
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Fullerton, CA")
                Text("Nearby Users")
                    .font(.headline)
                List {
                    ForEach(manager.nearbyUsers) { user in
                        HStack {
                            Text(user.username)
                                .frame(width: geometry.size.width / 4, alignment: Alignment.leading)
                            Text(String(user.milesAway) + " Miles Away")
                                .font(.custom("System", size: 14))
                                .frame(width: geometry.size.width / 4, alignment: Alignment.trailing)
                            HStack {
                                Button(action: {}) {
                                    Text("Add").modifier(UserButtonText())
                                }.modifier(UserButtons())
                                Button(action: {}) {
                                    Text("✉️").modifier(UserButtonText())
                                }.modifier(UserButtons())
                            }.frame(width: geometry.size.width / 3)
                        }
                    }
                }.frame(width: geometry.size.width, height: geometry.size.height / 2)
            }.frame(width: geometry.size.width)
        }
    }
}

struct NearbyUsersView_Previews: PreviewProvider {
    static var previews: some View {
        NearbyUsersView()
    }
}

struct UserButtons: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.accentColor)
            .foregroundColor(Color.white)
            .cornerRadius(5)
    }
}

struct UserButtonText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(6)
    }
}
