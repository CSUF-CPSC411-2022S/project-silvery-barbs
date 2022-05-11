//
//  Modifier.swift
//  dnd-planner
//
//  Created by Minkyu Park on 4/6/22.
//

import SwiftUI

struct TextEntry: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(5)
            .border(Color.black)
            .cornerRadius(10)
            .background(Color.white)
    }
}

struct ButtonDesign: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.red)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}
