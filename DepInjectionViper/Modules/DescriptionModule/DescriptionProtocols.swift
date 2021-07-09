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
}

// MARK: View Output (Presenter -> View)
protocol PresenterToViewDescriptionProtocol: AnyObject {
    
}

// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorDescriptionProtocol: AnyObject {
    var presenter: InteractorToPresenterDescriptionProtocol? { get set }
}

// MARK: Interator Output (Interactor -> Presenter)
protocol InteractorToPresenterDescriptionProtocol: AnyObject {
    
}

// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterDescriptionProtocol: AnyObject {
    func createDescriptionModule() -> UIViewController
}
