//
//  DescriptionRouter.swift
//  DepInjectionViper
//
//  Created by Abiu Ramirez on 09/07/21.
//

import UIKit

final class DescriptionRouter: PresenterToRouterDescriptionProtocol {
    
    func createDescriptionModule() -> UIViewController {
        return MainAssembly().makeDescriptionController()
    }
    
}
