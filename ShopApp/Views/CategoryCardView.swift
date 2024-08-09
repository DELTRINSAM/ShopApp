//
//  CategoryCardView.swift
//  ShopApp
//
//  Created by Deltrin Sam on 09/08/24.
//

import SwiftUI

struct CategoryCardView: View {
    let category: Category
    @State private var image: UIImage? = nil
    
    var body: some View {
        VStack {
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .cornerRadius(8)
            } else {
                ProgressView()
                    .frame(width: 120, height: 120)
                    .onAppear {
                        ImageDownloader.shared.downloadImage(from: category.image_url) { downloadedImage in
                            self.image = downloadedImage
                        }
                    }
            }
            
            Text(category.title)
                .font(.caption)
                .lineLimit(1)
                .padding(.top, 4)
        }
        .frame(width: 120)
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(18)
    }
}
