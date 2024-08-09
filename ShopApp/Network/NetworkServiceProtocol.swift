//
//  NetworkServiceProtocol.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import Foundation
import Combine

protocol NetworkServiceProtocol {
    func fetchSections() -> AnyPublisher<[Section], Error>
}
