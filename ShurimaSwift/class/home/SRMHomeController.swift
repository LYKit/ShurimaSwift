//
//  SRMHomeController.swift
//  ShurimaSwift
//
//  Created by jinghua on 2018/3/23.
//  Copyright © 2018年 ME.Sugar. All rights reserved.
//

import UIKit
import YYKit
import SnapKit
import Moya
import Alamofire

class SRMHomeController: SRMBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "首页"
        view.backgroundColor = .yellow
        
        let redView = UIView()
        view.addSubview(redView)
        redView.snp.makeConstraints { (make) in
            make.top.equalTo(0);
            make.left.equalTo(0);
            make.width.equalTo(SCREEN_WIDTH);
            make.height.equalTo(400);
        }
        redView.backgroundColor = UIColor.red
        
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.red
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside);
        button.snp.makeConstraints { (make) in
            make.size.equalTo(100)
            make.center.equalTo(view)
        }
    }
    
    @objc func buttonClick() {
        let vc = SRMTestViewController()
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
        vc.hidesBottomBarWhenPushed = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}


