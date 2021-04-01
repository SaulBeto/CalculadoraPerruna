//
//  LocalizableKeys.swift
//  CalculadoraPerruna
//
//  Created by Saul Alberto Cortez Garcia on 17/03/21.
//

import Foundation

struct LocalizableKeys {
    
    struct Onboarding {
        static let firstScreenTitle = "onboard.firstTitle".localized
        static let secondScreenTitle = "onboard.secondTitle".localized
        static let firstScreenDesc = "onboard.firstDescription".localized
        static let secondScreenDesc = "onboard.secondDescription".localized
        static let skip = "onboard.skip".localized
        static let start = "onboard.start".localized
    }
    
    struct Principal {
        static let instructions = "main.instructions".localized
        static let humanAge = "main.humanAge".localized
        static let dogAges = "main.dogAges".localized
        static let dogAge = "main.dogAge".localized
    }
    
    struct Info {
        static let title = "info.title".localized
        static let description = "info.description".localized
        static let linkTitle = "info.linkTitle".localized
    }
    
    struct LifeExpectancy {
        static let title = "life.title".localized
        static let age = "life.age".localized
    }
}
