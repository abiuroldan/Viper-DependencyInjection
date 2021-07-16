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
    
    func moveToSelectionModule (_ view: PresenterToViewDescriptionProtocol) {
        router?.goToSelectionModule(view: view)
    }
    
    func getData() {
        print("Requesting data...")
        print(interactor?.detailsBackData() ?? "no data")
    }
}

extension DescriptionPresenter: InteractorToPresenterDescriptionProtocol {
    
}
