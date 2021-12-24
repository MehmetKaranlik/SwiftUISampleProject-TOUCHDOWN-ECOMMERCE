    //
    //  TileView.swift
    //  TouchDown
    //
    //  Created by mehmet karanlık on 22.12.2021.
    //

import SwiftUI

struct TileView: View {
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }
            .padding(.horizontal)
            .padding(.top,15)
            .padding(.bottom,10)
    }
}

struct TileView_Previews: PreviewProvider {
    static var previews: some View {
        TileView(title: "Helmets")
    }
}
