//
//  UFOSceneUIView.swift
//  DrawUFO
//
//  Created by Modali,Naga Sravanthi on 4/10/18.
//  Copyright © 2018 Modali,Naga Sravanthi. All rights reserved.
//

import UIKit

class UFOSceneUIView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        UIColor.gray.setFill()
        UIColor.purple.setStroke()
        ufoBezier().stroke()
        ufoBezier().fill()
        
    }
 

    func ufoBezier() -> UIBezierPath {
        let bounds = CGRect(x: 200, y: 40, width: 40, height: 20)
        let path = UIBezierPath(ovalIn: bounds)
        return path
    }
}
