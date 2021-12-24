//
//  BrandItemView.swift
//  TouchDown
//
//  Created by mehmet karanlık on 23.12.2021.
//

import SwiftUI

struct BrandItemView: View {
    let brand : Brand
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: AppConstants.get.brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(AppConstants.get.colorBackground)
    }
}
