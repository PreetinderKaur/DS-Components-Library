//
//  Colors.swift
//  Components-Demo
//
//  Created by PREETINDER MAROK on 2022-04-01.
//

import UIKit
import SwiftUI

/**
 The abstract for all color enums that will return a UI color option
 */
public protocol Color {
    func makeColor() -> SwiftUI.Color?
    func makeUIColor() -> UIColor?
}

public extension Color where Self: RawRepresentable, Self.RawValue == String {
     func makeUIColor() -> UIColor? {
        if type(of: self) == DemoColors.Hex.self {
            return UIColor(hex: self.rawValue)
        } else {
            return UIColor(named: self.rawValue)
        }
    }
    
    func makeColor() -> SwiftUI.Color? {
        if type(of: self) == DemoColors.Hex.self {
            return SwiftUI.Color(hex: self.rawValue)
        } else {
            return SwiftUI.Color(self.rawValue)
        }
    }
}

public extension UIColor {
    convenience init(hex: String) {
        var rgbValue: UInt64 = 0
        
        Scanner(string: hex).scanHexInt64(&rgbValue)
        
        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                  alpha: CGFloat(1.0)
        )
    }
}

public extension SwiftUI.Color {
     init(hex: String) {
         var rgbValue: UInt64 = 0

         Scanner(string: hex).scanHexInt64(&rgbValue)

         self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                   green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                   blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                   opacity: CGFloat(1.0)
         )
     }
 }
