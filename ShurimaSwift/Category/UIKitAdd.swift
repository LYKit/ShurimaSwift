//
//  UIKitAdd.swift
//  ERP
//
//  Created by jinghua on 17/3/28.
//  Copyright © 2017年 GXERP. All rights reserved.
//

import UIKit

extension UIView {
    
    var top : CGFloat {
        get {
            return self.frame.origin.y
        }
        set(newValue) {
            var frames : CGRect = self.frame
            frames.origin.y = newValue
            self.frame = frames
        }
    }
    var left : CGFloat {
        get {
            return self.frame.origin.x
        }
        set(newValue) {
            var frames : CGRect = self.frame
            frames.origin.x = newValue
            self.frame = frames
        }
    }

    var right : CGFloat {
        get {
            return self.frame.origin.x + self.frame.size.width
        }
        set(newValue) {
            var frames : CGRect = self.frame
            frames.origin.x = newValue - self.frame.size.width
            self.frame = frames
        }
    }

    var bottom : CGFloat {
        get {
            return self.frame.origin.y + self.frame.size.height
        }
        set(newValue) {
            var frames : CGRect = self.frame
            frames.origin.y = newValue - frames.size.height
            self.frame = frames
        }
    }
    
    var width : CGFloat {
        get {
            return self.frame.size.width
        }
        set(newValue) {
            var frames = self.frame
            frames.size.width = newValue
            self.frame = frames
        }
    }
    
    var height : CGFloat {
        get {
            return self.frame.size.height
        }
        
        set(newValue) {
            var frames = self.frame
            frames.size.height = newValue
            self.frame = frames
        }
    }
    
    var centerX: CGFloat {
        get {
            return self.center.x
        }
        set (newValue) {
            self.center = CGPoint(x: newValue, y: self.center.y)
        }
    }
    
    var centerY: CGFloat {
        get {
            return self.center.y
        }
        
        set (newValue) {
            self.center = CGPoint(x: self.center.x, y: newValue)
        }
    }
    
    var size: CGSize {
        
        get {
            return self.frame.size
        }
        
        set (newValue){
            var frames = self.frame
            frames.size = newValue
            self.frame = frames
        }
    }
    
    var origin: CGPoint {
        get {
            return self.frame.origin
        }
        
        set {
            var frames = self.frame
            frames.origin = origin
            self.frame = frames
        }
    }
}


extension UIColor {
    convenience init(hexColor: String) {
        var red: UInt32 = 0
        var green: UInt32 = 0
        var blue: UInt32 = 0
        
        Scanner(string: hexColor[0..<2]).scanHexInt32(&red)
        Scanner(string: hexColor[2..<4]).scanHexInt32(&green)
        Scanner(string: hexColor[4..<6]).scanHexInt32(&blue)
        
        self.init(red: CGFloat(red) / 255.0,
                  green: CGFloat(green) / 255.0,
                  blue: CGFloat(blue) / 255.0,
                  alpha: 1.0)
    }
}





