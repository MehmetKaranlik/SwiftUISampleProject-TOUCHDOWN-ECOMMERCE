//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by mehmet karanlık on 22.12.2021.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK:  properties
    let player : Player
    
    // MARK:  body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}



// MARK:  preview
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: AppConstants.get.players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(AppConstants.get.colorBackground)
    }
}
