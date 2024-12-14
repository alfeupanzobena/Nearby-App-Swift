//
//  HomeViewController.swift
//  Nearby-App-Swift
//
//  Created by Alfeu Panzo Bena on 14/12/24.
//

import Foundation
import UIKit
import MapKit

class HomeViewController: UIViewController {
    private var places: [Place] = []
    private let homeView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = homeView
    }
}
