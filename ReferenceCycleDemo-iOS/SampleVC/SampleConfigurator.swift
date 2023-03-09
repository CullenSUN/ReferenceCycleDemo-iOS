//
//  SampleConfigurator.swift
//  ReferenceCycleDemo-iOS
//
//  Created by Cullen SUN on 9/3/2023.
//

import Foundation

struct SampleConfigurator {
    static func makeViewController() -> SampleViewController {
        let viewController = SampleViewController()
        let interactor = SampleInteractor()
        let presenter = SamplePresenter()
        let router = SampleRouter()
        
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
        presenter.router = router
        router.viewController = viewController
        
        return viewController
    }
}
