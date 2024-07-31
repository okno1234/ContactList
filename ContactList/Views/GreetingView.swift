//
//  GreetingView.swift
//  ContactList
//
//  Created by Eduardo Salcedo Fuentes on 31/7/24.
//

import SwiftUI

struct GreetingView: View {
    @Binding var active: Bool
    
    var body: some View {
        ZStack {
            Color("rmit-blue")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Welcome")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.heavy)
                    .foregroundColor(.yellow)
                    .padding([.leading, .bottom])
            }
            
            Spacer()
            
            Button(action: {
                active = false
            }, label: {
                Capsule()
                    .fill(.white.opacity(0.4))
                    .padding()
                    .frame(height: 80)
            })
        }
    }
}

#Preview {
    GreetingView(active: Binding.constant(true))
}
