//
//  RatingView.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import SwiftUI

struct RatingView: View {
    let rating: Int
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(1..<6) { star in
                Image(systemName: star <= rating ? "star.fill" : "star")
                    .resizable()
                    .frame(width: 10, height: 10)
                    .foregroundColor(star <= rating ? .yellow : .gray)
            }
        }
    }
}
