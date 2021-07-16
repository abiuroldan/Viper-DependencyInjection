//
//  SelectionController.swift
//  DepInjectionViper
//
//  Created by Abiu Ramirez on 09/07/21.
//

import UIKit

final class SelectionController: UIViewController {
    
    deinit {
        print("Deallocated", self)
    }
    
    private lazy var rootView = SelectionRootView()
    weak var presenter: ViewToPresenterSelectionProtocol?
    
    override func loadView() {
        view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension SelectionController: PresenterToViewSelectionProtocol {
    
}
