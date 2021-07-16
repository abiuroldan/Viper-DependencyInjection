//
//  SelectionPresenter.swift
//  DepInjectionViper
//
//  Created by Abiu Ramirez on 09/07/21.
//

import Foundation

final class SelectionPresenter: ViewToPresenterSelectionProtocol {
    
    var view: PresenterToViewSelectionProtocol?
    weak var interactor: PresenterToInteractorSelectionProtocol?
    var router: PresenterToRouterSelectionProtocol?
    
}

extension SelectionPresenter: InteractorToPresenterSelectionProtocol {
    
}
