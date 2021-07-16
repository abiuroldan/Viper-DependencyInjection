//
//  MainAssembly.swift
//  DepInjectionViper
//
//  Created by Abiu Ramirez on 09/07/21.
//

import UIKit
import Swinject

final class MainAssembly: Assembly {
    var container: Container!
    
    func assemble(container: Container) {
        self.container = container
        setupDescriptionModule(with: container)
        setupSectionModule(with: container)
    }
    
    private func setupDescriptionModule(with container: Container) {
        container.register(DescriptionPresenter.self) { _ in
            return DescriptionPresenter()
        }.inObjectScope(.weak)
        
        container.register(PresenterToRouterDescriptionProtocol.self) { _ in
            return DescriptionRouter(factory: self, selectionFactory: self)
        }.inObjectScope(.weak)
        
        container.register(PresenterToInteractorDescriptionProtocol.self) { _ in
            return DescriptionInteractor()
        }.inObjectScope(.weak)
        
        container.register(DescriptionController.self) { r in
            let vc = DescriptionController()
            let presenter: ViewToPresenterDescriptionProtocol & InteractorToPresenterDescriptionProtocol = r.resolve(DescriptionPresenter.self)!
            let router = r.resolve(PresenterToRouterDescriptionProtocol.self)!
            let interactor = r.resolve(PresenterToInteractorDescriptionProtocol.self)!
            
            vc.presenter = presenter
            vc.presenter?.router = router
            vc.presenter?.view = vc
            vc.presenter?.interactor = interactor
            vc.presenter?.interactor?.presenter = presenter
            
            return vc
        }.inObjectScope(.weak)
    }
    
    private func setupSectionModule(with container: Container) {
        container.register(SelectionPresenter.self) { _ in
            return SelectionPresenter()
        }.inObjectScope(.weak)
        
        container.register(PresenterToRouterSelectionProtocol.self) { _ in
            return SelectionRouter(factory: self)
        }.inObjectScope(.weak)
        
        container.register(PresenterToInteractorSelectionProtocol.self) { _ in
            return MockSelectionInteractor()
        }.inObjectScope(.weak)
        
        container.register(SelectionController.self) { r in
            let vc = SelectionController()
            let presenter: ViewToPresenterSelectionProtocol & InteractorToPresenterSelectionProtocol = r.resolve(SelectionPresenter.self)!
            let router = r.resolve(PresenterToRouterSelectionProtocol.self)!
            let interactor = r.resolve(PresenterToInteractorSelectionProtocol.self)!
            
            vc.presenter = presenter
            vc.presenter?.router = router
            vc.presenter?.view = vc
            vc.presenter?.interactor = interactor
            vc.presenter?.interactor?.presenter = presenter
            
            return vc
        }.inObjectScope(.weak)
    }
}

extension MainAssembly: DescriptionFactory {
    func makeDescriptionController() -> DescriptionController {
        return container.resolve(DescriptionController.self)!
    }
}

extension MainAssembly: SelectionFactory {
    func makeSelectionController() -> SelectionController {
        return container.resolve(SelectionController.self)!
    }
}
