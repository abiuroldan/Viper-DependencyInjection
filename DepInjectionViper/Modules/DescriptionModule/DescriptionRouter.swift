//
//  DescriptionRouter.swift
//  DepInjectionViper
//
//  Created by Abiu Ramirez on 09/07/21.
//

import UIKit

final class DescriptionRouter: PresenterToRouterDescriptionProtocol {
    
    var factory: DescriptionFactory
    var selectionFactory: SelectionFactory
    
    init(factory: DescriptionFactory, selectionFactory: SelectionFactory) {
        self.factory = factory
        self.selectionFactory = selectionFactory
    }
    
    func createDescriptionModule() -> UIViewController {
        return factory.makeDescriptionController()
    }
    
    func goToSelectionModule(view: PresenterToViewDescriptionProtocol) {
        if let vc = view as? UIViewController {
            vc.navigationController?
                        .pushViewController(selectionFactory.makeSelectionController(), animated: true)
        }
    }
}
