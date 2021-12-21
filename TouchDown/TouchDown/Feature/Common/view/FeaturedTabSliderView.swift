//
//  FeaturedTabSliderView.swift
//  TouchDown
//
//  Created by mehmet karanlık on 22.12.2021.
//

import SwiftUI

struct FeaturedTabSliderView: View {
    var body: some View {
        TabView {
            ForEach(AppConstants.get.players) { item in
                FeaturedItemView(player: item)
                    .padding(.top,10)
                    .padding(.horizontal,15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabSliderView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabSliderView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(AppConstants.get.colorGray)
    }
}
