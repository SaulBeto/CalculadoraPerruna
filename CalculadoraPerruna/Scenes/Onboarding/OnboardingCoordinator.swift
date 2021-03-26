//
//  OnboardingCoordinator.swift
//  CalculadoraPerruna
//
//  Created by Saul Alberto Cortez Garcia on 25/03/21.
//

import Foundation
import UIKit

class OnboardingCoordinator: Coordinator {
    
    var onboardingViewController: OnboardingViewController!
    var navigationController: UINavigationController!
    
    init() {
        
        onboardingViewController = getViewController(for: .onboarding, with: OnboardingViewController.typeName) as? OnboardingViewController
//        homeViewController.viewModel = HomeViewModel()
        onboardingViewController.coordinator = self
        
    }
    
    func start() {
        navigationController.navigationBar.isHidden = true
        navigationController = UINavigationController(rootViewController: onboardingViewController)
    }
      
}

extension OnboardingCoordinator {
    
    func goToHome() {
       let homeCoordinator = HomeCoordinator(navigation: navigationController)
        homeCoordinator.start()        
    }
    
}
