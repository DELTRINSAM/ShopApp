//
//  ProductSectionView.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import SwiftUI

struct ProductSectionView: View {
    let title: String
    let products: [Product]

    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.headline)
                Spacer()
                Button(action: {
                    
                }) {
                    Text("See All")
                        .foregroundColor(.blue)
                }
            }
            .padding(.horizontal)
            .padding(.vertical)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(products) { product in
                        ProductCardView(product: product)
                    }
                }
                .padding(.horizontal)
                .padding(.vertical, 3)
            }
        }
        .padding(.vertical)
    }
}
