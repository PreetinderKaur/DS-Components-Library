//
//  ViewController.swift
//  Components-Demo
//
//  Created by PREETINDER MAROK on 2022-03-31.
//

import UIKit


class ViewController: UIViewController {

    
    private lazy var primaryButton: PrimaryButton = {
        let configuration = PrimaryButtonConfiguration(title: "Primary",
                                                selector: #selector(buttonTapped))
        let button = PrimaryButton(frame: .zero, configuration: configuration)
        return button
    }()
    
    lazy var primaryButtonDisabled: PrimaryButton = {
          var config = PrimaryButtonConfiguration(title: "Disabled",
                                           selector: #selector(buttonTapped))
        config.colorSystem = .disabledColors
          let button = PrimaryButton(frame: .zero, configuration: config)
          return button
      }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(primaryButton)
        primaryButton.frame = CGRect(x: 90, y: 200, width: 200, height: 40)
        
        view.addSubview(primaryButtonDisabled)
        primaryButtonDisabled.frame = CGRect(x: 90, y: 250, width: 200, height: 40)
    }
    
    @objc
    func buttonTapped() {
        print("button Pressed")
    }


}

