//
//  Contact.swift
//  ContactList
//
//  Created by user264150 on 7/27/24.
//

import Foundation
import SwiftUI
import MapKit

struct Contact: Codable, Identifiable{
    var email: String
    var id: Int
    var phone, imageName, name: String
    var coordinates: Coordinates
    
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}

struct Coordinates: Codable {
    var latitude, longitude: Double
}

