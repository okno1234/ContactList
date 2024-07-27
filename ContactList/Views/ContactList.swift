//
//  ContactList.swift
//  ContactList
//
//  Created by user264150 on 7/27/24.
//

import Foundation
import SwiftUI

struct ContactList: View {
    var body: some View {
        NavigationView {
            List(contacts){
                contact in
                NavigationLink{
                    ContactCard(contact: contact)
                } label: {
                    ContactRow(contact: contact)
                }
                .navigationTitle("SSET Contact 📒")
            }
        }
        
    }
}

#Preview {
    ContactList()
}
