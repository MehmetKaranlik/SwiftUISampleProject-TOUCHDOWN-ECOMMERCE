//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by mehmet karanlık on 24.12.2021.
//

import SwiftUI

struct ProductDetailView: View {
    var  product : Product

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
           // MARK:  navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)

            // MARK: header
            HeaderDetailView(product: product)
                .padding(.horizontal)
            // MARK:  detail top part
            TopPartDetailView(product: product)
                .padding(.horizontal)
            // MARK:  detail bottom part
            // MARK:  rating+sizes
            // MARK:  dESC
            // MARK:  quatntity+fav
            // MARK:  add to cart
            Spacer()
        }
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: product.red, green: product.green, blue: product.blue)
                        .ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: AppConstants.get.products[0])
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
