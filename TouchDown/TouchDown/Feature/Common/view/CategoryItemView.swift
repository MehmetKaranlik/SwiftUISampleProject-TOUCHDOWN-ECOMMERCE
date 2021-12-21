    //
    //  CategoryItemView.swift
    //  TouchDown
    //
    //  Created by mehmet karanlık on 22.12.2021.
    //

import SwiftUI

struct CategoryItemView: View {
    let category : Category
    var body: some View {
        Button(action: {}) {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(AppConstants.get.colorGray)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(AppConstants.get.colorGray)
                Spacer()
            }
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(AppConstants.get.colorGray, lineWidth: 1))
        }
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: AppConstants.get.categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(AppConstants.get.colorBackground)
    }
}
