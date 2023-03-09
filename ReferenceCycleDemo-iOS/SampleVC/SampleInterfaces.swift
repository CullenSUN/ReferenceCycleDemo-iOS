//
//  SampleInterfaces.swift
//  ReferenceCycleDemo-iOS
//
//  Created by Cullen SUN on 9/3/2023.
//

import Foundation

protocol SampleInteractorInterface: AnyObject {
    func setupInitialView()
    func customButtonClicked()
    func closeButtonClicked()
}

protocol SampleViewControllerInterface: AnyObject {
    func setupInitialView(customBtnTitle: String)
}

protocol SamplePresenterInterface: AnyObject {
    func setupInitialView()
    func dismissSelf()
}

protocol SampleRouterInterface: AnyObject {
    func dismissSelf()
}
