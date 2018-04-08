//
//  SRMDemoCell.swift
//  ShurimaSwift
//
//  Created by jinghua on 2018/3/31.
//  Copyright © 2018年 ME.Sugar. All rights reserved.
//

import UIKit

//enum SRMDemoCellButtonForView {
//    case webView
//    case wkWebView
//}
//
//protocol SRMDemoCellDelegate: AnyObject {
//    func buttonDidClick(buttonType: SRMDemoCellButtonForView)
//}


class SRMDemoCell: SRMBaseCell {
//    weak var delegate: SRMDemoCellDelegate?

    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
    }
    
//    @objc func webViewBtnDidClick(button: UIButton) {
//
//        if button == webViewBtn {
//            delegate?.buttonDidClick(buttonType: .webView)
//        } else {
//            delegate?.buttonDidClick(buttonType: .wkWebView)
//        }
//
//    }
//
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
