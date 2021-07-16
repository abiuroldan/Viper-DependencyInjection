//
//  MockDescriptionInteractor.swift
//  DepInjectionViper
//
//  Created by Abiu Ramirez on 09/07/21.
//

import Foundation

final class MockDescriptionInteractor: PresenterToInteractorDescriptionProtocol {
    var presenter: InteractorToPresenterDescriptionProtocol?
    
    func detailsBackData() -> String {
        return "Data from mock class"
    }
}
