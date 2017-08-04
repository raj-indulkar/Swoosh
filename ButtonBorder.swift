//
//  ButtonBorder.swift
//  swoosh
//
//  Created by Raj Indulkar on 2017-08-04.
//  Copyright © 2017 Raj Indulkar. All rights reserved.
//

import UIKit

class ButtonBorder: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }
    
}
