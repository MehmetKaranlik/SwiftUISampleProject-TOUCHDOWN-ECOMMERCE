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
            buildNavigationBar()
            ScrollView(.vertical,showsIndicators: false) {
                VStack(spacing:0) {
                    buildSlidingImages()
                    CategoryGridView(categories: AppConstants.get.categories)
                    Spacer(minLength: 520)
                    buildFooterView()
                }
            }
        }
        .background(AppConstants.get.colorBackground.ignoresSafeArea(.all, edges: .all))
    }
    
    
    
    
    fileprivate func buildNavigationBar() -> some View {
        return CustomNavigationBar()
            .modifier1()
    }
    
    fileprivate func buildSlidingImages() -> some View {
        return FeaturedTabSliderView()
            .modifier1()
    }
    
    fileprivate func buildFooterView() -> some View {
        return FooterView()
            .padding(.horizontal)
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
