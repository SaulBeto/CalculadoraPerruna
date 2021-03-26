//
//  DogAge.swift
//  CalculadoraPerruna
//
//  Created by Saul Cortez Garcia  (Vendor) on 10/03/21.
//

import Foundation

class DogAge {
    
    private var dogAge: Double = 0.0
    
    func getHumanAge() -> Int {
        let age = 16 * log(dogAge) + 31
        return Int(age)
    }
    
    func isLessThanOneYear() -> Bool {
        return dogAge <= 1
    }
    
    func setAge(age: Double) {
        self.dogAge = age
    }
}
