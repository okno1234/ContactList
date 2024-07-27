//
//  CircleView.swift
//  ContactList
//
//  Created by user264150 on 7/27/24.
//

import SwiftUI

struct CircleView: View {
    let image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color("rmit_red"), lineWidth: 2)
            )
            .shadow(color: .white, radius: 7)
    }
}

#Preview {
    CircleView(image: contacts[0].image)
}
