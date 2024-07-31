//
//  ModelData.swift
//  ContactList
//
//  Created by user264150 on 7/27/24.
//

import Foundation
import MapKit

var contacts: [Contact] = decodeJsonFromJsonFile(jsonFileName: "contact.json")

func decodeJsonFromJsonFile(jsonFileName: String) -> [Contact] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Contact].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [Contact]
}
 
