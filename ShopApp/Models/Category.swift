//
//  Category.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import Foundation

struct Category: Identifiable, Codable {
    var id = UUID()
    let title: String
    let image_url: String
}
