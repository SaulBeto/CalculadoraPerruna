//
//  AppCoordinator.swift
//  CalculadoraPerruna
//
//  Created by Saul Alberto Cortez Garcia on 25/03/21.
//

import UIKit

class AppCoordinator: Coordinator {
    
    var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        
        goToOnboarding()
        navigationTheme()
    }
    
    func navigationTheme() {
        
        UIBarButtonItem.appearance().setTitleTextAttributes([.font: UIFont.boldSystemFont(ofSize: 14)], for: UIControl.State())
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 14)]
        UINavigationBar.appearance().barTintColor = .orange
        UINavigationBar.appearance().tintColor = .black
        UINavigationBar.appearance().isTranslucent = false
        UIBarButtonItem.appearance(whenContainedInInstancesOf: [UISearchBar.self]).setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
    }

}

extension AppCoordinator {
    
    func goToOnboarding() {
        let onboardingCoordinator = OnboardingCoordinator()
        onboardingCoordinator.start()
        window.rootViewController = onboardingCoordinator.navigationController
    }
    
}

