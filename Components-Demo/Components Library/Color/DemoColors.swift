//
//  WPColorName.swift
//  Components-Demo
//
//  Created by PREETINDER MAROK on 2022-04-01.
//

public struct DemoColors {
    // The colors strings from  Colors.xcasset
    public enum Assets: String, Color {
        case error1 = "alert"
        case warning = "warning"
        case neutralZero = "neutral-0"
        case neutral100 = "neutral-100"
        case neutral20 = "neutral-20"
        case disabled = "disabled"
    }
    
    // The hex colors
    public enum Hex: String, Color {
        case redColor = "E81249"
        case yellowColor = "F2C500"
        case black = "000000"
        case white = "FFFFFF"
        case neutral1Black = "121212"
        case disabled = "D3D3D3"
    }
}
