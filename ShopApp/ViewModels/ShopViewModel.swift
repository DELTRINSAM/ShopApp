//
//  ShopViewModel.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import SwiftUI
import Combine

class ShopViewModel: ObservableObject {
    @Published var sections: [Section] = []
    @Published var errorMessage: String? = nil
    
    private var cancellables = Set<AnyCancellable>()
    private let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol = NetworkService()) {
        self.networkService = networkService
        fetchSections()
    }
    
    func fetchSections() {
        networkService.fetchSections()
            .sink(receiveCompletion: { completion in
                    
                }, receiveValue: { sections in
                    print("Received sections: \(sections)")
                })
                .store(in: &cancellables)
    }
}
