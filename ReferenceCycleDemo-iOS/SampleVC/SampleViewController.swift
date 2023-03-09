//
//  SampleViewController.swift
//  ReferenceCycleDemo-iOS
//
//  Created by Cullen SUN on 8/3/2023.
//

import Foundation
import UIKit

class SampleViewController: UIViewController, SampleViewControllerInterface {
    var interactor: SampleInteractorInterface?
    
    private lazy var customButton: CustomButton = {
        let button = CustomButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpNavigationButtons()
        setUpUI()
        
        interactor?.setupInitialView()
    }
    
    private func setUpNavigationButtons() {
        let closeButton = UIBarButtonItem(
            barButtonSystemItem: .close,
            target: self,
            action: #selector(closeButtonClicked)
        )
        navigationItem.leftBarButtonItem = closeButton
    }
    
    private func setUpUI() {
        view.addSubview(customButton)
        customButton.buttonClickHander = {
            self.interactor?.customButtonClicked()
        }
        NSLayoutConstraint.activate([
            customButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    func setupInitialView(customBtnTitle: String) {
        customButton.updateView(buttonTitle: customBtnTitle)
    }
    
    @objc
    private func closeButtonClicked() {
        interactor?.closeButtonClicked()
    }
}
