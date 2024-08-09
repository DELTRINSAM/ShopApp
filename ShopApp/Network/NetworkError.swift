//
//  NetworkError.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case requestFailed(Error)
    case decodingFailed(Error)
}
