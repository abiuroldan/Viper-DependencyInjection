//
//  DescriptionProtocols.swift
//  DepInjectionViper
//
//  Created by Abiu Ramirez on 09/07/21.
//

import UIKit

// MARK: View Input (View -> Presenter)
protocol ViewToPresenterDescriptionProtocol: AnyObject {
    var view: PresenterToViewDescriptionProtocol? { get set }
    var interactor: PresenterToInteractorDescriptionProtocol? { get set }
    var router: PresenterToRouterDescriptionProtocol? { get set }
    
    func moveToSelectionModule (_ view: PresenterToViewDescriptionProtocol)
    func getData()
}

// MARK: View Output (Presenter -> View)
protocol PresenterToViewDescriptionProtocol: AnyObject {
    
}

// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorDescriptionProtocol: AnyObject {
    var presenter: InteractorToPresenterDescriptionProtocol? { get set }
    func detailsBackData() -> String
}

// MARK: Interator Output (Interactor -> Presenter)
protocol InteractorToPresenterDescriptionProtocol: AnyObject {
    
}

// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterDescriptionProtocol: AnyObject {
    var factory: DescriptionFactory { get set }
    func createDescriptionModule() -> UIViewController
    func goToSelectionModule(view: PresenterToViewDescriptionProtocol)
}
