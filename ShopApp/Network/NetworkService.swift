//
//  NetworkService.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import Foundation
import Combine

class NetworkService: NetworkServiceProtocol {
    func fetchSections() -> AnyPublisher<[Section], Error> {
        let url = URL(string: "https://64bfc2a60d8e251fd111630f.mockapi.io/api/Todo")!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .handleEvents(receiveOutput: { data in
                if let jsonString = String(data: data, encoding: .utf8) {
                    print("Received JSON: \(jsonString)")
                }
            })
            .decode(type: [Section].self, decoder: JSONDecoder())
            .mapError { error in
                print("Decoding error: \(error)")
                return error
            }
            .eraseToAnyPublisher()
    }
}
