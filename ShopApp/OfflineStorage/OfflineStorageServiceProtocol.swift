//
//  OfflineStorageServiceProtocol.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import Foundation

protocol OfflineStorageServiceProtocol {
    func fetchSections() -> [Section]
    func saveSections(_ sections: [Section])
}
