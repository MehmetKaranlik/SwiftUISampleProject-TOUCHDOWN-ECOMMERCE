    //
    //  CustomNavigationBar.swift
    //  TouchDown
    //
    //  Created by mehmet karanlık on 16.12.2021.
    //

import SwiftUI

struct CustomNavigationBar: View {
        // MARK:  properties
    @State private var isAnimating : Bool = false
    
        // MARK:  body
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }
            Spacer()
            LogoView()
                .opacity(isAnimating ? 1 : 0)
                .offset(x: 0, y: isAnimating ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 1)) {
                        isAnimating.toggle()
                    }
                }
            Spacer()
            ZStack {
                Button(action: {}) {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                }
                Circle()
                    .fill(Color.red)
                    .frame(width: 14, height: 14, alignment: .center)
                    .offset(x: 13, y: -10)
            }
        }
    }
}




    // MARK:  preview
struct CustomNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationBar()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
