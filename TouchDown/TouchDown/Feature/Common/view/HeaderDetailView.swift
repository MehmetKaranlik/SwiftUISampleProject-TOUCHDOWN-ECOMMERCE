//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by mehmet karanlık on 24.12.2021.
//

import SwiftUI

struct HeaderDetailView: View {
    var product : Product
    var body: some View {
        VStack(alignment: .leading, spacing: 9) {
            Text("Protective Gear")
            Text(product.name)
                .font(.largeTitle)
                .fontWeight(.black)
                
        }
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView(product: AppConstants.get.products[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(AppConstants.get.colorGray)
    }
}
