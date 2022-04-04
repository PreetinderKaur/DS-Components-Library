//
//  Button.swift
//  Components-Demo
//
//  Created by PREETINDER MAROK on 2022-03-31.
//

import UIKit

public class PrimaryButton: UIButton {
    private var config: PrimaryButtonConfiguration
                
    // MARK: - instance lifecycle
    init(frame: CGRect, configuration: PrimaryButtonConfiguration) {
        self.config = configuration
        super.init(frame: frame)
        setupUI(for: configuration)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI(for configuration: PrimaryButtonConfiguration) {
        self.setTitle(configuration.title, for: .normal)
        self.titleLabel?.font = configuration.font.makeUIFont()
        layer.cornerRadius = configuration.cornerRadius
        
        self.setTitleColor(config.colorSystem.titleColor.makeUIColor(), for: .normal)
        backgroundColor = configuration.colorSystem.backgroundColor.makeUIColor()
                
        isAccessibilityElement = configuration.isAccessible
        accessibilityLabel = configuration.accessibilityLabel
        
        addTarget(nil, action: configuration.selector, for: .touchUpInside)
    }

}
