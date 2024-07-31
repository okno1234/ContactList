//
//  WelcomeView.swift
//  ContactList
//
//  Created by Eduardo Salcedo Fuentes on 31/7/24.
//

import SwiftUI

struct WelcomeView: View {
    @State var isWelcomeActive: Bool = true
    
    var body: some View {
        ZStack {
            if isWelcomeActive{
                GreetingView(active: $isWelcomeActive)
            } else {
                ContactList()
            }
        }
    }
}

#Preview {
    WelcomeView()
}
