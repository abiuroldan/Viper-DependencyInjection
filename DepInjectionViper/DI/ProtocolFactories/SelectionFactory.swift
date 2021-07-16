//
//  SelectionFactory.swift
//  DepInjectionViper
//
//  Created by Abiu Ramirez on 09/07/21.
//

import UIKit

protocol SelectionFactory: AnyObject {
    func makeSelectionController() -> SelectionController
}
