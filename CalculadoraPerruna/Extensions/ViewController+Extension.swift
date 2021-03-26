//
//  ViewController+Extension.swift
//  CalculadoraPerruna
//
//  Created by Saul Alberto Cortez Garcia on 25/03/21.
//

import UIKit

public extension UIViewController {
    
    static var typeName: String {
        return String(describing: self)
    }

}
