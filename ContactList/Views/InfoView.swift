//
//  InfoView.swift
//  ContactList
//
//  Created by user264150 on 7/27/24.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.white)
            .frame(height: 25)
            .overlay(
                HStack{
                    Image(systemName: imageName)
                        .foregroundColor(Color("rmit_red"))
                    Text(text)
                        .foregroundColor(.black)
                })
    }
}

#Preview {
    VStack{
        InfoView(text: "123456789", imageName: "phone.fill")
        InfoView(text: "edusalad@gmail.com", imageName: "envelope.fill")
    }
}
