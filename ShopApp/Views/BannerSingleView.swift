//
//  BannerSingleView.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import SwiftUI

struct BannerSingleView: View {
    let banners = [
        Banner(id: "Banner 1", image: "https://oxygen-test.webc.in/media/cache/1200x0/Oxygen_New Banner/Mob banner-29_1695198939.jpg")
    ]
    
    @State private var images: [UIImage?] = [nil]

    var body: some View {
        VStack {
                ForEach(banners.indices, id: \.self) { index in
                    if let image = images[index] {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 200)
                            .clipped()
                    } else {
                        ProgressView()
                            .frame(height: 200)
                            .onAppear {
                                ImageDownloader.shared.downloadImage(from: banners[index].image) { downloadedImage in
                                    images[index] = downloadedImage
                                }
                            }
                    }
            }
            .frame(maxWidth: .infinity)
            .background(Color(.systemGray4))
            .cornerRadius(20)
            .padding()
        }
    }
}

