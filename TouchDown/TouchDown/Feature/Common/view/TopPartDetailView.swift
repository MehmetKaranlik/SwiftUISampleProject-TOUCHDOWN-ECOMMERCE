    //
    //  TopPartDetailView.swift
    //  TouchDown
    //
    //  Created by mehmet karanlık on 24.12.2021.
    //

import SwiftUI

struct TopPartDetailView: View {
    // MARK:  properties
    @State private var isAnimating : Bool = false;
    
    
    var product : Product
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
                // MARK:  price
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                Text(product.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)
            Spacer()
                // MARK:  photo
            Image(product.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimating ? 1 : 0.5)
                .offset(y: isAnimating ? 0 : -35)
            
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView(product: AppConstants.get.products[0])
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
