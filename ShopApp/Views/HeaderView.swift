//
//  HeaderView.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import SwiftUI

struct HeaderView: View {
    @State private var searchText = ""
    @State private var notificationCount = 3 // Example count for notification badge

    var body: some View {
        VStack {
            HStack {
                // Cart Icon
                Button(action: {
                    // Action for cart
                }) {
                    Image(systemName: "cart")
                        .font(.system(size: 24))
                }

                // Search Field
                ZStack(alignment: .leading) {
                    TextField("Search...", text: $searchText)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 10) 
                        .background(Color(.systemGray6))
                        .cornerRadius(30)
                        .overlay(
                            HStack {
                                Spacer()
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 10)
                            }
                        )
                }

                Spacer()

                // Notification with Badge
                Button(action: {
                    // Action for notification
                }) {
                    ZStack {
                        Image(systemName: "bell")
                            .font(.system(size: 24))
                        
                        if notificationCount > 0 {
                            Text("\(notificationCount)")
                                .font(.caption2)
                                .foregroundColor(.white)
                                .padding(4)
                                .background(Color.red)
                                .clipShape(Circle())
                                .offset(x: 10, y: -10)
                        }
                    }
                }
            }
            .padding()
            .background(Color(.green))
        }
        .background(Color(.green))
    }
}
