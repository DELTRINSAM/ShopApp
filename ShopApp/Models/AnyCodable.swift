//
//  AnyCodable.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import Foundation

struct AnyCodable: Codable {
    let value: Any
    
    init<T>(_ value: T) {
        self.value = value
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let string = try? container.decode(String.self) {
            value = string
        } else if let int = try? container.decode(Int.self) {
            value = int
        } else if let double = try? container.decode(Double.self) {
            value = double
        } else if let bool = try? container.decode(Bool.self) {
            value = bool
        } else if let category = try? container.decode(Category.self) {
            value = category
        } else if let banner = try? container.decode(Banner.self) {
            value = banner
        } else if let product = try? container.decode(Product.self) {
            value = product
        } else {
            throw DecodingError.dataCorruptedError(in: container, debugDescription: "Unknown type")
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        if let string = value as? String {
            try container.encode(string)
        } else if let int = value as? Int {
            try container.encode(int)
        } else if let double = value as? Double {
            try container.encode(double)
        } else if let bool = value as? Bool {
            try container.encode(bool)
        } else if let category = value as? Category {
            try container.encode(category)
        } else if let banner = value as? Banner {
            try container.encode(banner)
        } else if let product = value as? Product {
            try container.encode(product)
        } else {
            throw EncodingError.invalidValue(value, EncodingError.Context(codingPath: container.codingPath, debugDescription: "Unknown type"))
        }
    }
}
