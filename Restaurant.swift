//
//  Restaurant.swift
//  SMK
//
//  Created by Sathish Damodaran on 12/26/20.
//

import Foundation

struct Restaurant: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageName: String
    let description: String
    let category: String
    
    enum Category: String, Hashable, Codable, CaseIterable {
        case Tiffin = "Tiffin"
        case Rice = "Rice"
        case Appetizers = "Appetizers"
        case Curries = "Curries and Gravies"
        case Deserts = "Sweets and Deserts"
    }
}
