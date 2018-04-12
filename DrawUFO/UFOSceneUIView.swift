//
//  UFOSceneUIView.swift
//  DrawUFO
//
//  Created by Modali,Naga Sravanthi on 4/10/18.
//  Copyright © 2018 Modali,Naga Sravanthi. All rights reserved.
//

import UIKit

class UFOSceneUIView: UIView {

    var moveX = 200
    
    
    @IBAction func tapAction(_ sender: Any) {
        moveX += 20
        self.setNeedsDisplay()
        print("in tap")
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
           let background = UIImage(named: "mountain")
        
        background?.draw(in: rect)
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
        let bounds = CGRect(x: moveX, y: 40, width: 40, height: 20)
        let path = UIBezierPath(ovalIn: bounds)
        var center = bounds.origin
        center.x = center.x + 20
        let dome = UIBezierPath(arcCenter: center, radius: 10.0, startAngle: .pi/10.0, endAngle: .pi - .pi/10, clockwise: false)
         path.append(dome)
        
//        let bounds = CGRect(x: 200, y: 40, width: 50, height: 50)
//        let path = UIBezierPath(ovalIn: bounds)
//        let bounds2 = CGRect(x: 225, y: 40, width: 50, height: 50)
//        let dome = UIBezierPath(ovalIn: bounds2)
//        let bounds3 = CGRect(x: 215, y: 60, width: 50, height: 50)
//        let dome2 = UIBezierPath(ovalIn: bounds3)
//
//        path.append(dome)
//        path.append(dome2)
        
        
        
        
        
        return path
    }
}
