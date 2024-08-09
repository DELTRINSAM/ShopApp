//
//  ContentItem.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import Foundation

struct ContentItem: Codable, Identifiable {
    var id: UUID = UUID()
    var title: String?
    var imageUrl: String?
    var sku: String?
    var productName: String?
    var productImage: String?
    var productRating: Double?
    var actualPrice: String?
    var offerPrice: String?
    var discount: String?
    
    private enum CodingKeys: String, CodingKey {
        case title
        case imageUrl = "image_url"
        case sku
        case productName = "product_name"
        case productImage = "product_image"
        case productRating = "product_rating"
        case actualPrice = "actual_price"
        case offerPrice = "offer_price"
        case discount
    }
    
    func toProduct() -> Product? {
        guard let sku = sku,
              let name = productName,
              let image = productImage,
              let rating = productRating,
              let actualPrice = actualPrice?.replacingOccurrences(of: "₹", with: "").replacingOccurrences(of: ",", with: ""),
              let offerPrice = offerPrice?.replacingOccurrences(of: "₹", with: "").replacingOccurrences(of: ",", with: "") else {
            return nil
        }
        
        return Product(
            sku: sku,
            productName: name,
            productImage: image,
            productRating: Int(rating),
            actualPrice: actualPrice,
            offerPrice: offerPrice,
            discount: discount ?? ""
        )
    }

    func toCategory() -> Category? {
        guard let title = title, let imageUrl = imageUrl else {
            return nil
        }
        
        return Category(title: title, image_url: imageUrl)
    }
    
    func toBanner() -> Banner? {
        guard let imageUrl = imageUrl else {
            return nil
        }
        
        return Banner(id: UUID().uuidString, image: imageUrl)
    }
}
