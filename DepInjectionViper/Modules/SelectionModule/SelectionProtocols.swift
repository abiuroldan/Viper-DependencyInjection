//
//  SelectionProtocols.swift
//  DepInjectionViper
//
//  Created by Abiu Ramirez on 09/07/21.
//

import UIKit

// MARK: View Input (View -> Presenter)
protocol ViewToPresenterSelectionProtocol: AnyObject {
    var view: PresenterToViewSelectionProtocol? { get set }
    var interactor: PresenterToInteractorSelectionProtocol? { get set }
    var router: PresenterToRouterSelectionProtocol? { get set }
}

// MARK: View Output (Presenter -> View)
protocol PresenterToViewSelectionProtocol: AnyObject {
    
}

// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorSelectionProtocol: AnyObject {
    var presenter: InteractorToPresenterSelectionProtocol? { get set }
}

// MARK: Interator Output (Interactor -> Presenter)
protocol InteractorToPresenterSelectionProtocol: AnyObject {
    
}

// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterSelectionProtocol: AnyObject {
    var factory: SelectionFactory { get set }
    func createSelectionModule() -> UIViewController
}
