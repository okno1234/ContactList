//
//  ContactRow.swift
//  ContactList
//
//  Created by user264150 on 7/27/24.
//

import Foundation
import SwiftUI

struct ContactRow: View {
    var contact: Contact
    
    var body: some View {
        HStack {
            contact.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(contact.name)
        }
    }
}

#Preview{
    Group{
        ContactRow(contact: contacts[0])
        ContactRow(contact: contacts[2])
        ContactRow(contact: contacts[3])
    }
}
