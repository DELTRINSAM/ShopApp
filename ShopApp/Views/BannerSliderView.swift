//
//  BannerSliderView.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import SwiftUI

struct BannerSliderView: View {
    let banners = [
        Banner(id: "Banner 1", image: "https://oxygen-test.webc.in/media/cache/1200x0/Oxygen_New%20Banner/Mob%20banner-29_1695198939.jpg"),
        Banner(id: "Banner 2", image: "https://oxygen-test.webc.in/media/cache/1200x0/mobile/banner/mainbanner6_1675418946.png"),
        Banner(id: "Banner 3", image: "https://oxygen-test.webc.in/media/cache/1200x0/mobile/banner/mainbanner7_1675419778.png")
    ]
    
    @State private var selectedIndex = 0
    @State private var images: [UIImage?] = [nil, nil, nil]
    
    var body: some View {
        VStack {
            TabView(selection: $selectedIndex) {
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
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(height: 200)
            .background(Color(.systemGray4))
            .onAppear {
                startAutoScroll()
            }
        }
    }
    
    private func startAutoScroll() {
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { _ in
            withAnimation {
                selectedIndex = (selectedIndex + 1) % banners.count
            }
        }
    }
}
