//
//  CustomButton.swift
//  Advanved Calculator
//
//  Created by Abdelrahman Sobhy on 4/11/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import UIKit
class CustomButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.borderColor = UIColor.white.withAlphaComponent(0.5).cgColor
        self.layer.borderWidth = 1
        
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.size.height / 2

    }
}
