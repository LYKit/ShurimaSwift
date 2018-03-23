//
//  SRMBaseTabBarController.swift
//  ShurimaSwift
//
//  Created by jinghua on 2018/3/23.
//  Copyright © 2018年 ME.Sugar. All rights reserved.
//

import UIKit

class SRMBaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = SRMHomeController()
        addChildVC(viewCtrl: homeVC,
                   title: "首页",
                   normalImageName: "home_tabar_normal",
                   selectImageName: "home_tabar_select")

        let imsgVC = SRMIMsgController()
        addChildVC(viewCtrl: imsgVC,
                   title: "消息",
                   normalImageName: "mine_tabar_normal",
                   selectImageName: "mine_tabar_select")
    }
    
    /// 设置tab页
    ///
    /// - Parameters:
    ///   - viewCtrl: 各个子控制器
    ///   - title: 控制器标题
    ///   - normalImageName: 普通时图片名称
    ///   - selectImageName: 选中时图片名称
    private func addChildVC(viewCtrl: UIViewController,
                               title: String,
                     normalImageName: String,
                     selectImageName: String) {
        

        viewCtrl.title = title
        let normal_image = UIImage(named: normalImageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)

        let select_image = UIImage(named: selectImageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        let tabbarItem = UITabBarItem(title: title,
                                      image: normal_image,
                                      selectedImage: select_image)
        viewCtrl.tabBarItem = tabbarItem
        
        let navVC = SRMNavigationController(rootViewController: viewCtrl)
        self.addChildViewController(navVC)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}
