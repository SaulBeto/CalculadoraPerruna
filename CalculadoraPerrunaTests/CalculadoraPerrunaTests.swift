//
//  CalculadoraPerrunaTests.swift
//  CalculadoraPerrunaTests
//
//  Created by Saul Cortez Garcia  (Vendor) on 25/02/21.
//

import XCTest
@testable import CalculadoraPerruna


class CalculadoraPerrunaTests: XCTestCase {
    
    func test_getHumanAge_whenDogHasOneYear() {
        
        let dogAge = DogAge()
        dogAge.setAge(age: 1)
        
        let humanAge = dogAge.getHumanAge()
        
        XCTAssertEqual(humanAge, 31)
    }
    
    func test_getHumanAge_whenDogHas6Months() {
        
        let dogAge = DogAge()
        dogAge.setAge(age: 0.5)
        
        let humanAge = dogAge.getHumanAge()
        
        XCTAssertEqual(humanAge, 19)
    }
    
    func test_validateAge_whenDogHasLessThan1Year() {
        
        let dogAge = DogAge()
        dogAge.setAge(age: 1)
        
        let isLessThanOneYear = dogAge.isLessThanOneYear()
        
        XCTAssertTrue(isLessThanOneYear)
    }
    
    func test_validateAge_whenDogHasMoreThan1Year() {
        
        let dogAge = DogAge()
        dogAge.setAge(age: 15)
        
        let isLessThanOneYear = dogAge.isLessThanOneYear()
        
        XCTAssertFalse(isLessThanOneYear)
    }
        
}
