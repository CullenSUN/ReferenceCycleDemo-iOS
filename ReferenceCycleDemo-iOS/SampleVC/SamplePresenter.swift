//
//  SamplePresenter.swift
//  ReferenceCycleDemo-iOS
//
//  Created by Cullen SUN on 8/3/2023.
//

import Foundation

class SamplePresenter: SamplePresenterInterface {
    weak var viewController: SampleViewControllerInterface?
    var router: SampleRouterInterface?

    func setupInitialView() {
        viewController?.setupInitialView(customBtnTitle: "Just Another Button")
    }
    
    func dismissSelf() {
        router?.dismissSelf()
    }
}
