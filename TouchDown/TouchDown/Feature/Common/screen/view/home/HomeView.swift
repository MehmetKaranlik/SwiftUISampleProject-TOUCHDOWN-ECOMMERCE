    //
    //  ContentView.swift
    //  TouchDown
    //
    //  Created by mehmet karanlık on 16.12.2021.
    //

import SwiftUI

struct ContentView: View {
        // MARK:  properties
    
    
    
        // MARK:  body
    var body: some View {
        VStack(spacing : 0) {
            CustomNavigationBar()
                .modifier1()
            ScrollView(.vertical,showsIndicators: false) {
                VStack(spacing:0) {
                    FeaturedTabSliderView()
                        .modifier1()
                    Spacer(minLength: 520)
                    FooterView()
                        .padding(.horizontal)
                }
            }
        }
        .background(AppConstants.get.colorBackground.ignoresSafeArea(.all, edges: .all))
    }
}



    // MARK:  preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}



fileprivate extension CustomNavigationBar {
    func modifier1() -> some View {
        self
            .padding(.all, 10)
            .background(Color.white)
            .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: 5)
    }
}


fileprivate extension FeaturedTabSliderView {
    func modifier1() -> some View {
        self
            .padding(.vertical)
            .frame(height: UIScreen.main.bounds.width/1.475)
    }
}
