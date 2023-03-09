//
//  SampleRouter.swift
//  ReferenceCycleDemo-iOS
//
//  Created by Cullen SUN on 9/3/2023.
//

import Foundation
import UIKit

class SampleRouter: SampleRouterInterface {
    var viewController: UIViewController?
    
    func dismissSelf() {
        viewController?.dismiss(animated: true)
    }
}
