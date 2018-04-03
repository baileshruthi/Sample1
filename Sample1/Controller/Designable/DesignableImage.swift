//
//  DesignableImage.swift
//  Sample1
//
//  Created by iw02 on 28/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import UIKit

@IBDesignable
class DesignableImage: UIImageView {
    
    @IBInspectable var cornerRadius: CGFloat = 20
    @IBInspectable var fillColor: UIColor = UIColor.blue
    @IBInspectable var borderColor: UIColor = UIColor.blue
    @IBInspectable var borderRadius: CGFloat = 0
    
    
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = cornerRadius
        layer.backgroundColor = fillColor.cgColor
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderRadius
    }
}
