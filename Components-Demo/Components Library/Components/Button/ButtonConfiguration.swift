//
//  ButtonConfiguration.swift
//  Components-Demo
//
//  Created by PREETINDER MAROK on 2022-03-31.
//

import UIKit

public enum ButtonState: Int, CaseIterable {
    case normal
    case disabled
    
    public var stateColor: Color {
        switch self {
        case .normal:
            return DemoColors.Hex.black
        case .disabled:
            return DemoColors.Hex.disabled
        }
    }
}

public enum PrimaryColorSystem: Int, CaseIterable {
    case enabledColors
    case disabledColors
    
    public var titleColor: Color {
        switch self {
        case .enabledColors:
            return DemoColors.Hex.white
        case .disabledColors:
            return DemoColors.Hex.white
        }
    }
    
    public var backgroundColor: Color {
        switch self {
        case .enabledColors:
            return DemoColors.Hex.black
        case .disabledColors:
            return DemoColors.Hex.disabled
        }
    }
}

enum Icon: Int, CaseIterable {
    case name
    case size
    case padding
    case alignment
    case color
}

// MARK: - Base configuration for all button type
protocol BaseConfiguration {
    var isAccessible: Bool { get set }
    var accessibilityLabel: String? { get set }
    var cornerRadius: CGFloat { get }
}


class PrimaryButtonConfiguration: BaseConfiguration {
    // default attributes
    let cornerRadius: CGFloat = 20
    let font: DemoFont = DemoFont.action
    
    // required attributes
    var title: String
    var selector: Selector
    
    // configurable attributes
    var state: ButtonState = .normal
    var icon: Icon?
    var colorSystem: PrimaryColorSystem = .enabledColors
    var isAccessible: Bool = true
    var accessibilityLabel: String?
    
    // MARK: Required Init
    required init(title: String,
                selector: Selector) {
        self.title = title
        self.selector = selector
    }
}

