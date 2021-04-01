//
//  DogsTableViewCell.swift
//  CalculadoraPerruna
//
//  Created by Saul Alberto Cortez Garcia on 31/03/21.
//

import UIKit

class DogsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var dogNameLabel: UILabel!
    @IBOutlet weak var yearsLabel: UILabel!
    @IBOutlet weak var dogImageView: UIImageView!
    
    
    override func layoutSubviews() {
        super.layoutSubviews()

        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 16, bottom: 10, right: 16))
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

        contentView.layer.cornerRadius = 5
        contentView.layer.shadowRadius = 5
        contentView.layer.shadowOffset = CGSize(width: 0, height: 3)
        contentView.layer.shadowColor = UIColor.lightGray.cgColor
        contentView.layer.shadowOpacity = 1
        
        dogNameLabel.layer.cornerRadius = 5        
    }
    
    func configure(with dog: Dog) {
        dogNameLabel.text = dog.name
        yearsLabel.text = dog.years + " " + LocalizableKeys.LifeExpectancy.age
        dogImageView.image = UIImage(named: dog.image)
    }
    
}
