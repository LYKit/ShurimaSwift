//
//  SRMWebViewAndJsController.swift
//  ShurimaSwift
//
//  Created by jinghua on 2018/4/8.
//  Copyright © 2018年 ME.Sugar. All rights reserved.
//

import UIKit
import JavaScriptCore

class SRMWebViewAndJsController: SRMUIWebViewDemoBaseCtrl {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupWebView()
    }
    
    func setupWebView() {
        webView?.delegate = self
        let url = Bundle.main.url(forResource: "test", withExtension: "html")
        let request = URLRequest(url: url!)
        webView?.loadRequest(request)
        
    }
}

extension SRMWebViewAndJsController: UIWebViewDelegate {

    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        /*  1.无参数调用，拦截请求
        let url = request.url
        guard let urlstr = url?.absoluteString else {
            return false
        }
        if urlstr.elementsEqual("nativejs://noParameter") {
            print("无参数调用")
        }
        */
        
        

        return true
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        let context = webView.value(forKeyPath: "documentView.webView.mainFrame.javaScriptContext") as! JSContext
        let keyedScript : @convention(block) () ->() = {
            let array = JSContext.currentArguments()
            if let arr = array {
                for obj in arr {
                    print(obj)
                }
            }
        }
        context.setObject(unsafeBitCast(keyedScript, to: AnyObject.self), forKeyedSubscript: "hasParameterMethod" as NSCopying & NSObjectProtocol)
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        
    }
}
