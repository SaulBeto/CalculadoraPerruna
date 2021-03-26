//
//  Coordinator.swift
//  CalculadoraPerruna
//
//  Created by Saul Alberto Cortez Garcia on 25/03/21.
//

import UIKit

protocol Coordinator: class {
    func start()
}

extension Coordinator {
    
    func getViewController(for storyboard: ProjectStoryboard, with identifier: String) -> UIViewController? {
        return UIStoryboard(name: storyboard.rawValue, bundle: nil).instantiateViewController(withIdentifier: identifier)
    }
    
    func setRootViewController(_ viewController: UIViewController?) {
        
        guard let window = (UIApplication.shared.delegate as? AppDelegate)?.window else {
            return
        }
        window.rootViewController = viewController
    }
    
}


