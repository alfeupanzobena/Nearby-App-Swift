//
//  UiViewController+ext.swift
//  Nearby-App-Swift
//
//  Created by Alfeu Panzo Bena on 11/12/24.
//

import Foundation
import UIKit

extension UIViewController {
    public func setupContentViewToViewController(contentView: UIView) {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
}
