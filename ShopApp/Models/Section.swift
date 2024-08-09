//
//  Section.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import Foundation

struct Section: Identifiable, Codable {
    let id: String
    let type: SectionType
    let title: String
    let contents: [ContentItem]?
}
