//
//  MainView.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import SwiftUI

struct MainView: View {
    @StateObject private var shopViewModel = ShopViewModel(networkService: NetworkService())

    var body: some View {
        TabView {
            ContentView(viewModel: shopViewModel)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("Category")
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Category")
                }
            Text("Cart")
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
            Text("Offers")
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            Text("Account")
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
        }
    }
}

#Preview {
    MainView()
}
