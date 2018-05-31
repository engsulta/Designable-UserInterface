//  UIView+Designable.swift
//  DesignableUserInterface
//
//  Created by Ahmed Sultan on 5/31/18.
//  Copyright © 2018 sulta. All rights reserved.
//

import UIKit
@IBDesignable class DesignableImageView:UIImageView {}
@IBDesignable class DesignableButton:UIButton{}
@IBDesignable class DesignableTextField: UITextField {
    
    @IBInspectable
    var placeholderTextColor: UIColor = UIColor.lightGray {
        didSet {
            guard let placeholder = placeholder else {
                return
            }
            
            attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [ NSAttributedStringKey.foregroundColor: placeholderTextColor])
        }
    }
    
}

extension UIView{
    
    @IBInspectable
    var borderwidth:CGFloat{
        get{
            return layer.borderWidth
        }
        set(newBorderWidth){
            layer.borderWidth = newBorderWidth
        }
    }
    
    @IBInspectable
    var borderColor : UIColor?{
        get{
            return layer.borderColor != nil ? UIColor(cgColor: layer.borderColor!): nil
        }
        set{
            layer.borderColor = newValue?.cgColor
        }
    }
    
    
    @IBInspectable
    var cornerRadius:CGFloat{
        get{
            return layer.cornerRadius
        }
        set{
            layer.cornerRadius = newValue
            layer.masksToBounds = (newValue != 0)
        }
    }
    
    @IBInspectable
    var makeCircular : Bool{
        get{
            return false
        }
        set{
            if (newValue){
                cornerRadius = min (bounds.width,bounds.height)/2
            }
            
        }
    }
    
    
    
    
    
}

