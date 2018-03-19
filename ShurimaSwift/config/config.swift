//
//  config.swift
//  ShurimaSwift
//
//  Created by 赵旭 on 2018/3/16.
//  Copyright © 2018年 ME.Sugar. All rights reserved.
//

import UIKit
import Foundation

//屏幕尺寸
let SCREEN_WIDTH = UIScreen.main.bounds.size.width
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

let IPHONE4 = (UIScreen.main.bounds.size.height == 480.0)
let IPHONE5 = (UIScreen.main.bounds.size.height == 568.0)
let IPHONE6 = (UIScreen.main.bounds.size.height == 667.0)
let IPHONE6Plus = (UIScreen.main.bounds.size.height == 736.0)
let IPHONEX = (UIScreen.main.bounds.size.height == 812.0)

//系统版本
let kIOS8 = Double(UIDevice().systemVersion) == 8.0 ? 1 : 0
let kIOS9 = Double(UIDevice().systemVersion) == 9.0 ? 1 : 0
let kIOS10 = Double(UIDevice().systemVersion) == 10.0 ? 1 : 0
let kIOS11 = Double(UIDevice().systemVersion) == 11.0 ? 1 : 0

//rgb 颜色
func RGB(r:CGFloat,_ g:CGFloat,_ b:CGFloat) -> UIColor{
    
    return UIColor(red: r/255.0, green:(g)/255.0, blue: (b)/255.0, alpha:1.0)
    
}

func RGBA(r:CGFloat,_ g:CGFloat,_ b:CGFloat, _ a:CGFloat) -> UIColor{
    
    return UIColor(red: r/255.0, green:(g)/255.0, blue: (b)/255.0, alpha:a)
    
}

//主题颜色
let ColorMainbg = RGBA(r: 141, 141, 141, 1)

//系统缓存
let USER_DEFAULT = UserDefaults.standard
func UserDefaultsSet(key:String,obj:AnyObject) -> Void{
    
    return UserDefaults.standard.set(obj, forKey: key)
    
}

func UserDefaultsGet(key:String) -> AnyObject{
    
    return UserDefaults.standard.value(forKey: key)! as AnyObject
    
}

func UserDefaultsRemove(key:String) -> Void{
    
    return UserDefaults.standard.removeObject(forKey: key)
    
}

