//
//  ContentView.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ShopViewModel
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                HeaderView()
                    .frame(width: geometry.size.width, alignment: .top)
                    .background(Color(.green))
                
                ScrollView {
                    VStack(spacing: 0) {
                        BannerSliderView()
                            .frame(width: geometry.size.width, height: 200)
                        MostPopularView()
                        BannerSingleView()
                            .frame(width: geometry.size.width, height: 200)
                        ProductCategoryView()
                        FeaturedProductsView()
                    }
                }
                
                Spacer()
            }
            .onAppear {
                viewModel.fetchSections()
            }
        }
    }
}

