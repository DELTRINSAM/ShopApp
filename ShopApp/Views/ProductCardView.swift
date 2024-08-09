//
//  ProductCardView.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import SwiftUI

struct ProductCardView: View {
    let product: Product
    @State private var image: UIImage? = nil
    
    var body: some View {
        VStack(alignment: .leading) {
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120, alignment: .center)
                    .background(Color(.systemGray5))
                    .cornerRadius(8)
            } else {
                Color.gray
                    .frame(width: 120, height: 120)
                    .cornerRadius(8)
                    .onAppear {
                        ImageDownloader.shared.downloadImage(from: product.productImage) { downloadedImage in
                            self.image = downloadedImage
                        }
                    }
            }
            
            Text(product.productName)
                .font(.caption)
                .lineLimit(2)
                .padding(.bottom, 2)
            
            Text(product.discount)
                .font(.footnote)
                .foregroundColor(.white)
                .padding(4)
                .background(
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.orange)
                )
                .padding(.bottom, 2)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(product.offerPrice)
                        .font(.caption)
                        .fontWeight(.bold)
                    Text(product.actualPrice)
                        .font(.caption2)
                        .strikethrough()
                        .foregroundColor(.gray)
                }
                RatingView(rating: product.productRating)
            }
        }
        .frame(width: 120)
        .padding(10)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 2)
    }
}
