//
//  Contact.swift
//  ContactList
//
//  Created by user264150 on 7/27/24.
//

import Foundation
import SwiftUI
import MapKit

struct Contact: Identifiable{
    var id = UUID()
    var name: String
    var email: String
    var phone: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D
}
