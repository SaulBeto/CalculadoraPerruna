//
//  CustomSlider.swift
//  CalculadoraPerruna
//
//  Created by Saul Cortez Garcia  (Vendor) on 25/02/21.
//

import UIKit

extension UISlider {
    
    var thumbCenterX: CGFloat {
        return thumbRect(forBounds: frame, trackRect: trackRect(forBounds: frame), value: value).midX - 50
    }
}
