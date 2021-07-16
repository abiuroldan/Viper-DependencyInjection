//
//  SelectionRouter.swift
//  DepInjectionViper
//
//  Created by Abiu Ramirez on 09/07/21.
//

import UIKit

final class SelectionRouter: PresenterToRouterSelectionProtocol {
    
    var factory: SelectionFactory
    
    init(factory: SelectionFactory) {
        self.factory = factory
    }
    
    func createSelectionModule() -> UIViewController {
        return factory.makeSelectionController()
    }
}
