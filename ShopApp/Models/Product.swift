//
//  Product.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import Foundation

//struct Product: Identifiable, Codable {
//    let id: String
//    let name: String
//    let offerAmount: Int
//    let actualPrice: Double
//    let offerPrice: Double?
//    let image: String
//    let rating: Double
//}

struct Product: Identifiable, Codable {
    let id = UUID()
    let sku: String
    let productName: String
    let productImage: String
    let productRating: Int
    let actualPrice: String
    let offerPrice: String
    let discount: String
}
