//
//  InitialViewController.swift
//  ReferenceCycleDemo-iOS
//
//  Created by Cullen SUN on 8/3/2023.
//

import UIKit

class InitialViewController: UIViewController {
    private lazy var launchButton: UIButton = {
        let button = UIButton(configuration: .filled(), primaryAction: nil)
        button.setTitle("Launch Sample ViewController", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI() {
        launchButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)

        view.addSubview(launchButton)

        NSLayoutConstraint.activate([
            launchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            launchButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc
    private func buttonClicked() {
        let sampleVC = SampleConfigurator.makeViewController()
        let navController = UINavigationController(rootViewController: sampleVC)
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: true)
    }
}
