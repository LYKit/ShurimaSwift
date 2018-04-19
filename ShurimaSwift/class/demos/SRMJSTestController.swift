//
//  SRMJSTestController.swift
//  ShurimaSwift
//
//  Created by jinghua on 2018/3/26.
//  Copyright © 2018年 ME.Sugar. All rights reserved.
//

import UIKit
import WebKit
import JavaScriptCore

class SRMWebViewAndJsCtrl: SRMBaseViewController {

    let webView = UIWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.isHidden = true

        _initWebView()
    }
    
    private func _initWebView () {
        webView.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
        webView.delegate = self
        view.addSubview(webView)
        
        let url = Bundle.main.url(forResource: "test", withExtension: "html")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
    }
    
    func foo1() {
        print("调用了foo1")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

//js 调用 本地函数
/*
 1. 拦截约定好的request (无法获取参数)
 let url = request.url
 guard let urlstr = url?.absoluteString else {
 return false
 }
 if urlstr.elementsEqual("nativejs://callPhone") {
 print("📲")
 }
 
 2. 获取到JSContext进行调用
 2.1 无参数调用
 let keyedScript : @convention(block) () ->() = {
 self.foo1()
 }
 context.setObject(unsafeBitCast(keyedScript, to: AnyObject.self), forKeyedSubscript: "log" as NSCopying & NSObjectProtocol)
 
 2.2 有参数调用
 let keyedSubScript : @convention(block) () ->() = {
 let array = JSContext.currentArguments()
 if let arr = array {
 for obj in arr {
    print(obj)
        }
     }
 }
 context.setObject(unsafeBitCast(keyedSubScript, to: AnyObject.self), forKeyedSubscript: "testfoo" as NSCopying & NSObjectProtocol)

 */
extension SRMWebViewAndJsCtrl : UIWebViewDelegate {
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
//        let url = request.url
//        guard let urlstr = url?.absoluteString else {
//            return false
//        }
//        if urlstr.elementsEqual("nativejs://callPhone") {
//            print("📲")
//        }

        
        return true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        let context = webView.value(forKeyPath: "documentView.webView.mainFrame.javaScriptContext") as! JSContext
        
//        let keyedScript : @convention(block) () ->() = {
//            self.foo1()
//        }
//        context.setObject(unsafeBitCast(keyedScript, to: AnyObject.self), forKeyedSubscript: "log" as NSCopying & NSObjectProtocol)
//        
//        let keyedSubScript : @convention(block) () ->() = {
//            let array = JSContext.currentArguments()
//            if let arr = array {
//                for obj in arr {
//                    print(obj)
//                }
//            }
//        }
//        context.setObject(unsafeBitCast(keyedSubScript, to: AnyObject.self), forKeyedSubscript: "testfoo" as NSCopying & NSObjectProtocol)
        
//        let model = JSObjcModel()
//        model.controller = self
//        model.context = context
//
//        context.setObject(model, forKeyedSubscript: "OCModel" as NSCopying & NSObjectProtocol)
//        let url = Bundle.main.url(forResource: "test", withExtension: "html")
//
//        let script = try? String(contentsOf: url!, encoding: String.Encoding.utf8)
//        context.evaluateScript(script)
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        
    }
}

@objc protocol JavaScriptSwiftDelegate: JSExport {
    func callSystemCamera()
//    func showAlert(title: String, msg: String)
//    func callWithDict(dict: [String : AnyObject])
//    func jsCallObjectAndObjectJsWithDict(dict: [String : AnyObject])
}

@objc class JSObjcModel: NSObject, JavaScriptSwiftDelegate {
    weak var controller: UIViewController?
    weak var context: JSContext?
    
    func callSystemCamera() {
        print("call system camera")
        
        let jsFunc = context?.objectForKeyedSubscript("jsFunc")
//        jsFunc?.call(withArguments: [])
    }
}

extension SRMWebViewAndJsCtrl :  WKNavigationDelegate, WKUIDelegate, WKScriptMessageHandler {
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
    }
}
