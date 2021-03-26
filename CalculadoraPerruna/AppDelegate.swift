//
//  AppDelegate.swift
//  CalculadoraPerruna
//
//  Created by Saul Cortez Garcia  (Vendor) on 25/02/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: AppCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        coordinator = AppCoordinator(window: window!)
        coordinator?.start()
        window?.makeKeyAndVisible()
        
        return true
    }
}

