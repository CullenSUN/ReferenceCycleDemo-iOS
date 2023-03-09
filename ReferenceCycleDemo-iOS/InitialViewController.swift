//
//  InitialViewController.swift
//  ReferenceCycleDemo-iOS
//
//  Created by Cullen SUN on 8/3/2023.
//

import UIKit

class InitialViewController: UIViewController {
    private lazy var customButton: CustomButton = {
        let button = CustomButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI() {
        view.addSubview(customButton)
        
        customButton.updateView(buttonTitle: "Launch Sample ViewController")
        customButton.buttonClickHander = {
            self.buttonClicked()
        }
        
        NSLayoutConstraint.activate([
            customButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func buttonClicked() {
        let sampleVC = SampleConfigurator.makeViewController()
        let navController = UINavigationController(rootViewController: sampleVC)
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: true)
    }
}
