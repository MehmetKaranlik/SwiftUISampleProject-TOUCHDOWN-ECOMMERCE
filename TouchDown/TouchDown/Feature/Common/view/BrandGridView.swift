//
//  BrandGridView.swift
//  TouchDown
//
//  Created by mehmet karanlık on 23.12.2021.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            LazyHGrid(rows: AppConstants.get.gridLayout, alignment: .center, spacing: AppConstants.get.columnSpacing, pinnedViews: []) {
                ForEach(AppConstants.get.brands) { index in
                    BrandItemView(brand: index)
                }
            }
            .frame(height:200)
            .padding(.vertical ,10)
            .padding(.horizontal,5)
          
        }
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
        
            .background(AppConstants.get.colorBackground)
        
    }
}
