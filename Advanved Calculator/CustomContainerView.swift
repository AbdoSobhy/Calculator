
//
//  CustomContainerView.swift
//  Advanved Calculator
//
//  Created by Abdelrahman Sobhy on 4/11/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import UIKit
class CustomContainerView: UIView {
    let myLayer : CAGradientLayer = CAGradientLayer()

    override func awakeFromNib() {
        super.awakeFromNib()
        /// shadow
        self.layer.shadowColor = UIColor.black.withAlphaComponent(0.4).cgColor
        self.layer.shadowOffset = CGSize(width: -3, height: -3)
        self.layer.shadowRadius = 3
        self.layer.shadowOpacity = 1

        
        /// gradiant layer
           
           let firstColor = UIColor.init(red: 152/255, green: 53/255, blue: 160/255, alpha: 1).cgColor
           let socondColor = UIColor.init(red: 85/255, green: 116/255, blue: 200/255, alpha: 1).cgColor
           myLayer.startPoint = CGPoint(x: 0, y: 0.1)
           myLayer.endPoint = CGPoint(x: 0, y: 0.7)
           myLayer.colors = [firstColor,socondColor]
           myLayer.zPosition = -1
           self.layer.addSublayer(myLayer)
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        myLayer.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
        
    }
}
