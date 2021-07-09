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
        
        container.register(DescriptionPresenter.self) { _ in
            return DescriptionPresenter()
        }.inObjectScope(.container)
        
        container.register(DescriptionRouter.self) { _ in
            return DescriptionRouter()
        }
        
        container.register(DescriptionInteractor.self) { _ in
            return DescriptionInteractor()
        }
        
        container.register(DescriptionController.self) { r in
            let vc = DescriptionController()
            let presenter: ViewToPresenterDescriptionProtocol & InteractorToPresenterDescriptionProtocol = r.resolve(DescriptionPresenter.self)!
            let router = r.resolve(DescriptionRouter.self)!
            let interactor = r.resolve(DescriptionInteractor.self)!
            
            vc.presenter = presenter
            vc.presenter?.router = router
            vc.presenter?.view = vc
            vc.presenter?.interactor = interactor
            vc.presenter?.interactor?.presenter = presenter
            
            return vc
        }
    }
}

extension MainAssembly: DescriptionFactory {
    func makeDescriptionController() -> DescriptionController {
        return container.resolve(DescriptionController.self)!
    }
}
