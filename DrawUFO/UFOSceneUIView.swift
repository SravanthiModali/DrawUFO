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
        UIColor(displayP3Red: 0.5, green: 0.5, blue: 0.5, alpha:0.75).setFill()
        UIColor.purple.setStroke()
        ufoBezier().stroke()
        ufoBezier().fill()
        var path = ufoBezier()
        var moveIt = CGAffineTransform(translationX: -100.0, y: 30.0)
        path.apply(moveIt)
        path.stroke()
    }
 

    func ufoBezier() -> UIBezierPath {
        let bounds = CGRect(x: 200, y: 40, width: 40, height: 20)
        let path = UIBezierPath(ovalIn: bounds)
        var center = bounds.origin
        center.x = center.x + 20
        let dome = UIBezierPath(arcCenter: center, radius: 10.0, startAngle: .pi/10.0, endAngle: .pi - .pi/10, clockwise: false)
        
        path.append(dome)
        return path
    }
}
