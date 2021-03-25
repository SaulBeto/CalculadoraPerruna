//
//  String+Extension.swift
//  CalculadoraPerruna
//
//  Created by Saul Alberto Cortez Garcia on 17/03/21.
//

import Foundation


extension String {
    
    var localized: String {
        NSLocalizedString(self, tableName: nil, bundle: Constants.bundle, value: "", comment: "")
    }
}
