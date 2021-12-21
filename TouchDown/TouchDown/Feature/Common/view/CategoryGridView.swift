    //
    //  CategoryGridView.swift
    //  TouchDown
    //
    //  Created by mehmet karanlık on 22.12.2021.
    //

import SwiftUI

struct CategoryGridView: View {
    let categories : [Category]
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            LazyHGrid(rows: AppConstants.get.gridLayout, alignment: .center, spacing: AppConstants.get.columnSpacing, pinnedViews: []) {
                Section(content: {
                    ForEach(categories) { index in
                        CategoryItemView(category: index)
                    }
                }, header: {
                    SectionView(rotateClockwise: false)
                }, footer: {
                    SectionView(rotateClockwise: true)
                })
                
                
            }
            .frame(height:140)
            .padding(.horizontal,15)
            .padding(.vertical,15)
        }
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView(categories: AppConstants.get.categories)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(AppConstants.get.colorBackground)
    }
}
