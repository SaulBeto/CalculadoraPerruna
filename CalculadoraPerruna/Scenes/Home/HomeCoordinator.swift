//
//  HomeCoordinator.swift
//  CalculadoraPerruna
//
//  Created by Saul Alberto Cortez Garcia on 25/03/21.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator {
    
    var homeViewController: HomeViewController!
    var navigationController: UINavigationController!
    
    init(navigation: UINavigationController) {
        navigationController = navigation
        homeViewController = getViewController(for: .home, with: HomeViewController.typeName) as? HomeViewController
//        homeViewController.viewModel = HomeViewModel()
        homeViewController.coordinator = self
    }
    
    func start() {
        navigationController.pushViewController(homeViewController, animated: true)
    }
      
}


extension HomeCoordinator {
    
    func goToInformation() {
       
    }
    
}
