//
//  FeaturedProductsView.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

import SwiftUI

struct FeaturedProductsView: View {
    let products: [Product] = [
        Product(
            sku: "HP-1032270",
            productName: "HP | Pavilion 15-eg2039TU | i7 12th Gen | 16GB | 1TB SSD | 15.6\"FHD | WIN 11 MSO 2021 | Silver",
            productImage: "https://oxygen-test.webc.in/media/catalog/product/cache/43d17a8578e757a575698dc2be224561/1/_/1_104.jpg",
            productRating: 3,
            actualPrice: "₹100,000",
            offerPrice: "₹89,868",
            discount: "10% Off"
        ),
        Product(
            sku: "CRO-1028108",
            productName: "Crossbeats Ignite S3 Bluetooth Calling Smart Watch, Carbon Black",
            productImage: "https://oxygen-test.webc.in/media/catalog/product/cache/43d17a8578e757a575698dc2be224561/1/_/1_6ee0babd-0ab9-4c17-8475-6b51bbb88d45_600x.jpg",
            productRating: 4,
            actualPrice: "₹9,999",
            offerPrice: "₹4,870",
            discount: "51% Off"
        ),
        Product(
            sku: "SPINTO",
            productName: "Impex 2.1 SPINTO Portable Bluetooth Home Theatre (Black)",
            productImage: "https://oxygen-test.webc.in/media/catalog/product/cache/43d17a8578e757a575698dc2be224561/h/m/hmt-1_18.jpg",
            productRating: 3,
            actualPrice: "₹4,390",
            offerPrice: "₹3,410",
            discount: "22% Off"
        ),
        Product(
            sku: "AMA-1028391",
            productName: "Amazfit GTR3 Pro Smart Watch, Brown Leather (A2040)",
            productImage: "https://oxygen-test.webc.in/media/catalog/product/cache/43d17a8578e757a575698dc2be224561/1/1/11ca2e205e624c5b00328b345a9f9bdd_2048x2048.jpg",
            productRating: 5,
            actualPrice: "₹25,999",
            offerPrice: "₹18,999",
            discount: "27% Off"
        ),
        Product(
            sku: "LG-1032961",
            productName: "LG | 260L 2 Star Frost Free Refrigerator With Smart Inverter Compressor | Blue Quartz",
            productImage: "https://oxygen-test.webc.in/media/catalog/product/cache/43d17a8578e757a575698dc2be224561/1/_/1_344.jpg",
            productRating: 3,
            actualPrice: "₹36,199",
            offerPrice: "₹31,000",
            discount: "14% Off"
        ),
        Product(
            sku: "HP-1034344",
            productName: "HP Omen | Intel Core i7-12th Gen | 16GB RAM | 1TB SSD|15.6| RTX 3060 6GB |16.1 Inch | W11 | Black | 16-B1361TX",
            productImage: "https://oxygen-test.webc.in/media/catalog/product/cache/43d17a8578e757a575698dc2be224561/-/o/-original-imagbhzqahdzyx4e_1.jpg",
            productRating: 3,
            actualPrice: "₹155,490",
            offerPrice: "₹140,300",
            discount: "10% Off"
        ),
        Product(
            sku: "DEL-1029874",
            productName: "Dell Inspiron 3511 | Intel Core i5 11th Gen/8GB RAM/512GB SSD/15.6 inch FHD Display/Windows 11 | Silver",
            productImage: "https://oxygen-test.webc.in/media/catalog/product/cache/43d17a8578e757a575698dc2be224561/i/n/in3511nt_cnb_00000ff090_sl_2.jpg",
            productRating: 3,
            actualPrice: "₹63,900",
            offerPrice: "₹56,900",
            discount: "11% Off"
        )
    ]
    
    var body: some View {
        ProductSectionView(title: "Featured Products", products: products)
    }
}
