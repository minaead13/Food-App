//
//  UIView + Extensions.swift
//  Yummie
//
//  Created by Mina on 19/03/2023.
//

import UIKit
extension UIView {
    @IBInspectable var cornerRadius : CGFloat {
        get{ return self.cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
