//
//  SRMDemoCell.swift
//  ShurimaSwift
//
//  Created by jinghua on 2018/3/31.
//  Copyright © 2018年 ME.Sugar. All rights reserved.
//

import UIKit

class SRMDemoCell: SRMBaseCell {
    
    var webViewBtn: UIButton?
    var wkViewBtn: UIButton?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        let btnW = CGFloat(ceilf(Float(CGFloat(SCREEN_WIDTH / 5))))
        let padding = CGFloat(ceilf(Float(SCREEN_WIDTH / 20)))

        webViewBtn = UIButton(type: .custom)
        webViewBtn?.frame = CGRect(x: SCREEN_WIDTH - 2 * padding - 2 * btnW,
                                   y: 0,
                               width: btnW,
                              height: 45)
        webViewBtn?.setTitle("webView", for: .normal)
        contentView.addSubview(webViewBtn!)
        webViewBtn?.backgroundColor = .green
        
        wkViewBtn = UIButton(type: .custom)
        wkViewBtn?.frame = CGRect(x: SCREEN_WIDTH - padding - btnW,
                                  y: 0,
                              width: btnW,
                             height: 45)
        wkViewBtn?.setTitle("wkWebView", for: .normal)
        contentView.addSubview(wkViewBtn!)
        wkViewBtn?.backgroundColor = .green

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
