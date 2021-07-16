//
//  DescriptionRootView.swift
//  DepInjectionViper
//
//  Created by Abiu Ramirez on 09/07/21.
//

import UIKit

final class DescriptionRootView: UIView {
    
    let nextScreenButton: UIButton = {
        let button = UIButton()
        button.setTitle("Next screen", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemFill
        
        addSubview(nextScreenButton)
        
        nextScreenButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        nextScreenButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
