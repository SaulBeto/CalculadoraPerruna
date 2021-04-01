//
//  LifeExpectancyViewController.swift
//  CalculadoraPerruna
//
//  Created by Saul Alberto Cortez Garcia on 31/03/21.
//

import UIKit

class LifeExpectancyViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.register(cellType: DogsTableViewCell.self)
        }
    }
    
    private var dogs: [Dog] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = LocalizableKeys.LifeExpectancy.title
        dogs = mapDogs()
        tableView.reloadData()
    }
    
    private func mapDogs() -> [Dog] {
        
        let dogs = [Dog(name: "Airedale Terrier", years: "10-12", image: ""),
                    Dog(name: "Akita Inu", years: "9-11", image: ""),
                    Dog(name: "Alaskan Malamute", years: "10-12", image: ""),
                    Dog(name: "Basset Hound", years: "11-12", image: ""),
                    Dog(name: "Beagle", years: "12-15", image: ""),
                    Dog(name: "Beauceron", years: "8-10", image: ""),
                    Dog(name: "Bichón Frisé", years: "12-15", image: ""),
                    Dog(name: "Bobtail", years: "12-13", image: ""),
                    Dog(name: "Border Collie", years: "12-13", image: ""),
                    Dog(name: "Border Terrier", years: "14-15", image: ""),
                    Dog(name: "Boston Terrier", years: "12-15", image: ""),
                    Dog(name: "Boxer", years: "9-12", image: ""),
                    Dog(name: "Braco alemán de pelo corto", years: "12-14", image: ""),
                    Dog(name: "Bull Terrier", years: "10-14", image: ""),
                    Dog(name: "Bull Terrier miniatura", years: "12-14", image: ""),
                    Dog(name: "Bulldog Americano", years: "10-15", image: ""),
                    Dog(name: "Bulldog francés", years: "10-12", image: ""),
                    Dog(name: "Bulldog inglés", years: "8-10", image: ""),
                    Dog(name: "Bullmastiff", years: "8-10", image: ""),
                    Dog(name: "Cairn Terrier", years: "12-15", image: "")]
        
        return dogs
    }
    
}


extension LifeExpectancyViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(with: DogsTableViewCell.self, for: indexPath)
        cell.configure(with: dogs[indexPath.row])
        return cell
    }
    
}

extension LifeExpectancyViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

}

