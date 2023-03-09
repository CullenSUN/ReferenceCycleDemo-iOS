//
//  CustomButton.swift
//  ReferenceCycleDemo-iOS
//
//  Created by Cullen SUN on 9/3/2023.
//

import Foundation
import UIKit

class CustomButton: UIView {
    private lazy var iconImageView: UIImageView = {
        let imgView = UIImageView(image: UIImage(systemName: "square.and.pencil"))
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton(configuration: .plain(), primaryAction: nil)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var buttonClickHander: (() -> Void)?

    init() {
        super.init(frame: .zero)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateView(buttonTitle: String) {
        button.setTitle(buttonTitle, for: .normal)
    }
    
    private func setUpView() {
        layer.borderWidth = 1
        layer.cornerRadius = 5
        layer.borderColor = button.tintColor.cgColor
        
        addSubview(iconImageView)
        addSubview(button)
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            iconImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            iconImageView.topAnchor.constraint(greaterThanOrEqualTo: topAnchor),
            iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            button.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor),
            button.topAnchor.constraint(greaterThanOrEqualTo: topAnchor),
            button.centerYAnchor.constraint(equalTo: centerYAnchor),
            button.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    @objc
    private func buttonClicked() {
        buttonClickHander?()
    }
}
