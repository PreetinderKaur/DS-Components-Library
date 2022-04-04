//
//  DemoFonts.swift
//  Components-Demo
//
//  Created by PREETINDER MAROK on 2022-04-01.
//

import Foundation
import UIKit

public protocol Font {
    var fontName: String { get }
    var size: CGFloat { get }
}

extension Font {
    func makeUIFont() -> UIFont? {
        UIFont(name: fontName, size: size)
    }
}

public enum DemoFontNames: String {
    case sourceSansRegular = "sourceSansPro-Regular"
    case sourceSansBold = "sourceSansPro-Bold"
}

// The default implementation of Font
public struct DemoFont: Font {
    public let fontName: String
    public let size: CGFloat
    
    public init(fontName: DemoFontNames, size: CGFloat) {
        self.fontName = fontName.rawValue
        self.size = size
    }
    
    static let action: DemoFont = DemoFont(fontName: .sourceSansRegular, size: 16)
}
