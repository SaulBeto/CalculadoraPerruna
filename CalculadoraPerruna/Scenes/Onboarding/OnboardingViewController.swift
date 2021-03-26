//
//  OnboardingViewController.swift
//  CalculadoraPerruna
//
//  Created by Saul Alberto Cortez Garcia on 25/03/21.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    @IBOutlet weak var skipOnboardingButton: UIButton!
    var coordinator: OnboardingCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func skipButtonTapped(_ sender: Any) {
        
        coordinator?.goToHome()
    }
    
}
