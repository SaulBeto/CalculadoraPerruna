//
//  InfoViewController.swift
//  CalculadoraPerruna
//
//  Created by Saul Cortez Garcia  (Vendor) on 09/03/21.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var linkTitleLabel: UILabel!
    
    @IBOutlet weak var firstLinkButton: UIButton!
    @IBOutlet weak var secondLinkButton: UIButton!
    @IBOutlet weak var thirdLinkButton: UIButton!
    
    
    deinit {
        print("denit \(self)")
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func getLinksButtons() -> [UIButton] {
        return [firstLinkButton, secondLinkButton, thirdLinkButton]
    }
    
    private func setupView() {
        
        titleLabel.text = LocalizableKeys.Info.title
        descriptionTextView.text = LocalizableKeys.Info.description
        linkTitleLabel.text = LocalizableKeys.Info.linkTitle
        
        getLinksButtons().forEach {
            $0.layer.cornerRadius = 10
            $0.layer.shadowColor = UIColor.gray.cgColor
            $0.layer.shadowRadius = 2
        }
    }

    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func linksButtonTapped(_ sender: UIButton) {
        
        var url = ""
        
        switch sender.tag {
        case 0:
            url = "https://www.ngenespanol.com/ciencia/existe-una-nueva-formula-para-calcular-la-edad-de-tu-perro-en-anos-humanos/"
        case 1:
            url = "https://www.lavanguardia.com/vivo/mascotas/20191203/471847573051/como-calcular-edad-perro.html"
        default:
            url = "https://www.elcomercio.com/tendencias/calculo-edad-perros-humanos-ciencia.html"
        }
        
        if let url = URL(string: url) {
            Vibration.light.vibrate()
            UIApplication.shared.open(url)
        }
    }
    
}
