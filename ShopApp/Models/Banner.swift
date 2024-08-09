//
//  Banner.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import Foundation

struct Banner: Identifiable, Codable {
    let id: String
    let image: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case image = "image_url"
    }
}
