//
//  ProductCategoryView.swift
//  ShopApp
//
//  Created by Deltrin Sam on 09/08/24.
//

import SwiftUI

struct ProductCategoryView: View {
    let categories: [Category] = [
        Category(title: "Mobile", image_url: "https://oxygen-test.webc.in/media/cache/100x0/mobile/homeCategories/Mask Group 4408_1678191046.png"),
        Category(title: "Appliances", image_url: "https://oxygen-test.webc.in/media/cache/100x0/mobile/homeCategories/Image 1682_1678191046.png"),
        Category(title: "Smart TV", image_url: "https://oxygen-test.webc.in/media/cache/100x0/mobile/homeCategories/Image 1683_1678191046.png"),
        Category(title: "Wearables", image_url: "https://oxygen-test.webc.in/media/cache/100x0/mobile/homeCategories/Image 1685_1678191046.png")
    ]

    
    var body: some View {
        CategorySectionView(title: "Categories", categories: categories)
    }
}
