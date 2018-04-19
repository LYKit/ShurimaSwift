//
//  SRMUIWebViewDemoBaseCtrl.swift
//  ShurimaSwift
//
//  Created by jinghua on 2018/4/8.
//  Copyright © 2018年 ME.Sugar. All rights reserved.
//

import UIKit
import WebKit
import JavaScriptCore

class SRMUIWebViewDemoBaseCtrl: SRMBaseViewController {

    var webView: UIWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.tabBarController?.tabBar.isHidden = true
        
        _initWebView()
    }
    
    private func _initWebView () {
        webView = UIWebView()
        webView?.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
        view.addSubview(webView!)
    }

}
