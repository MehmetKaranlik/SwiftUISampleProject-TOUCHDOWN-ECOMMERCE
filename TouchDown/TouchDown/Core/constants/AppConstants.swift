    //
    //  AppConstants.swift
    //  TouchDown
    //
    //  Created by mehmet karanlık on 16.12.2021.
    //

import Foundation
import UIKit
import SwiftUI

struct AppConstants {
        // private init() {}
    static var get = AppConstants()
    
    var categories : [Category] {
        Bundle.main.decode(file: "category.json")
    }
    var players: [Player] {
        Bundle.main.decode(file: "player.json")
    }
    
    lazy var colorGray : Color = Color(UIColor.systemGray4)
    lazy var colorBackground : Color = Color("ColorBackground")
    lazy var accentColor : Color = .accentColor
    
    
    let columnSpacing : CGFloat = 10
    let rowSpacing: CGFloat = 10
    
    var gridLayout : [GridItem] {
        Array(repeating: GridItem(.flexible() ,spacing: rowSpacing), count: 2)
    }
}
