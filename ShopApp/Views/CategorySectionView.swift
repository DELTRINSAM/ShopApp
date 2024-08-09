//
//  CategorySectionView.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import SwiftUI

struct CategorySectionView: View {
    let title: String
    let categories: [Category]

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
                    ForEach(categories) { category in
                        CategoryCardView(category: category)
                    }
                }
                .padding(.horizontal)
                .padding(.vertical, 3)
            }
        }
        .padding(.vertical)
    }
}
