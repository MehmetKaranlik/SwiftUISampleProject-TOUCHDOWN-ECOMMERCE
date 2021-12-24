    //
    //  ProductItemView.swift
    //  TouchDown
    //
    //  Created by mehmet karanlık on 22.12.2021.
    //

import SwiftUI

struct ProductItemView: View {
    var product : Product
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding()
                
            }
            .background(Color(red: product.red, green:  product.green, blue:  product.blue))
            .cornerRadius(15)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        }
       
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: AppConstants.get.products[0])
            .previewLayout(.sizeThatFits)
            .padding()
        
        
    }
}
