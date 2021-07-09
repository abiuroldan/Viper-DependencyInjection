//
//  DescriptionPresenter.swift
//  DepInjectionViper
//
//  Created by Abiu Ramirez on 09/07/21.
//

import Foundation

final class DescriptionPresenter: ViewToPresenterDescriptionProtocol {
    var view: PresenterToViewDescriptionProtocol?
    var interactor: PresenterToInteractorDescriptionProtocol?
    var router: PresenterToRouterDescriptionProtocol?
    
}

extension DescriptionPresenter: InteractorToPresenterDescriptionProtocol {
    
}
