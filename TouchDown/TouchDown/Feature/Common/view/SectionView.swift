//
//  SectionView.swift
//  TouchDown
//
//  Created by mehmet karanlık on 22.12.2021.
//

import SwiftUI

struct SectionView: View {
    // MARK:  property
    @State var rotateClockwise : Bool = false
    
    var body: some View {
        VStack(spacing:0) {
            Spacer()
            Text("categories".uppercased())
                .fontWeight(.bold)
                .font(.footnote)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ?  90 : -90))
            Spacer()
        }
        .background(AppConstants.get.colorGray.cornerRadius(12))
        .frame(width:85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(AppConstants.get.colorBackground)
    }
}
