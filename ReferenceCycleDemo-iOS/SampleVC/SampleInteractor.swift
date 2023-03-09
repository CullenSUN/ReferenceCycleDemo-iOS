//
//  SampleInteractor.swift
//  ReferenceCycleDemo-iOS
//
//  Created by Cullen SUN on 8/3/2023.
//

import Foundation

class SampleInteractor: SampleInteractorInterface {
    var presenter: SamplePresenterInterface?
    
    func setupInitialView() {
        presenter?.setupInitialView()
    }
    
    func customButtonClicked() {
        print("Custom button got clicked")
    }
    
    func closeButtonClicked() {
        presenter?.dismissSelf()
    }
}
