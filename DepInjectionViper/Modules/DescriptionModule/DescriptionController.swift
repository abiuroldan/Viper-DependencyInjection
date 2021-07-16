//
//  DescriptionController.swift
//  DepInjectionViper
//
//  Created by Abiu Ramirez on 09/07/21.
//

import UIKit

final class DescriptionController: UIViewController {
    
    private lazy var rootView = DescriptionRootView()
    weak var presenter: ViewToPresenterDescriptionProtocol?
    
    override func loadView() {
        view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rootView.nextScreenButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        presenter?.getData()
    }
    
    @objc private func buttonAction() {
        presenter?.moveToSelectionModule(self)
    }
    
}

extension DescriptionController: PresenterToViewDescriptionProtocol {
    
}
