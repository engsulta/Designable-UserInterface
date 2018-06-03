//
//  CustomView.swift
//  DesignableUserInterface
//
//  Created by Ahmed Sultan on 5/31/18.
//  Copyright © 2018 sulta. All rights reserved.
//

import UIKit
@IBDesignable
class CustomView: UIView {
    /** this to override draw function for view of type UIview to draw rect circular ends
     */
    fileprivate func drawRectWithSoftCorners() {
        layer.masksToBounds = true
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.blue.cgColor
        layer.cornerRadius = layer.frame.size.width / 8
    }
    /** this to override draw function for view of type UIview to draw circle
     */
    fileprivate func drawCircle() {
        layer.masksToBounds = true
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.blue.cgColor
        layer.cornerRadius = layer.frame.size.width / 2
    }
    
    override class var layerClass: AnyClass {
        get {
            return CAGradientLayer.self
        }
    }
    var gradientLayer :CAGradientLayer{
        return layer as! CAGradientLayer
    }
    
    let endColor = UIColor(red: 0.0, green: 100/255.0, blue: 255/255.0, alpha: 1.0).cgColor
    
    let startColor = UIColor(red: 100/255.0, green: 204/255.0, blue: 255/255.0, alpha: 1.0).cgColor
    /** override draw function for view of type UIview to draw gradient  background
     */
    fileprivate func makeGradientLayer() {
        layer.masksToBounds = true
        layer.borderWidth = 2.0
        layer.borderColor = UIColor(red: 0.0, green: 64/255.0, blue: 128/255.0, alpha: 1.0).cgColor
        layer.cornerRadius = 20.0
        gradientLayer.colors = [startColor,endColor]
        
    }
    
    
    override func draw(_ rect: CGRect) {
        // drawRectWithSoftCorners()
        //drawCircle()
        
        makeGradientLayer()
        
    }
    
    
    

}
