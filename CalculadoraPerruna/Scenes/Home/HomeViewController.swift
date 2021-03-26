//
//  ViewController.swift
//  CalculadoraPerruna
//
//  Created by Saul Cortez Garcia  (Vendor) on 25/02/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var backGroundIndicatorView: UIView!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var bgViewLeadingContraint: NSLayoutConstraint!
    @IBOutlet weak var humanAgeLabel: UILabel!
    @IBOutlet weak var humanInformationLabel: UILabel!
    @IBOutlet weak var ageInformationLabel: UILabel!
    @IBOutlet weak var instructionsLabel: UILabel!
    
    var dogAge: DogAge = DogAge()
    private var previousStepValue: CGFloat = 0
    private var step: Float = 1
    var coordinator: HomeCoordinator?

    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        setupView()
        setupAge()
        
        if #available(iOS 13.0, *) {
             overrideUserInterfaceStyle = .light
         }
    }

    
    private func setupView() {
        ageSlider.setThumbImage(UIImage(named: "hueso"), for: .normal)
        ageSlider.minimumTrackTintColor = .white
        ageSlider.maximumTrackTintColor = .white
        backGroundIndicatorView.layer.cornerRadius = backGroundIndicatorView.frame.width / 2
        instructionsLabel.text = LocalizableKeys.Principal.instructions
    }
    
    private func setupAge(age: Int = 0) {
        
        dogAge.setAge(age: age == 0 ? 0.5 : Double(age))
        let humanAge = dogAge.getHumanAge()
        
        ageLabel.text = humanAge == 19  ? "1/2" : "\(Int(age))"
        humanAgeLabel.text = "\(humanAge)"
        humanInformationLabel.text = LocalizableKeys.Principal.humanAge
        ageInformationLabel.text = dogAge.isLessThanOneYear() ? LocalizableKeys.Principal.dogAge
                                                              : LocalizableKeys.Principal.dogAges
    }
    
    private func getRoundedValue(value: Float) -> Int {
        let roundedValue = round(value / step) * step
        return Int(roundedValue)
    }
    

    @IBAction func valueChanged(_ sender: UISlider) {
        
        let dogAge = getRoundedValue(value: sender.value)

        UIView.animate(withDuration: 0.25, animations: { () -> Void in
            self.bgViewLeadingContraint.constant = self.ageSlider.thumbCenterX
            self.view.layoutIfNeeded()
        })
        
        setupAge(age: dogAge)
        
        if previousStepValue != CGFloat(dogAge) {
            Vibration.light.vibrate()
        }
        previousStepValue = CGFloat(dogAge)
    }
    
    @IBAction func infoButtonTapped(_ sender: Any) {
        
        let infoViewController = InfoViewController()
        self.present(infoViewController, animated: true)
    }
    
}

