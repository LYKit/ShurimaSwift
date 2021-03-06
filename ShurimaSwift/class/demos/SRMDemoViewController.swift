//
//  SRMDemoViewController.swift
//  ShurimaSwift
//
//  Created by jinghua on 2018/4/8.
//  Copyright © 2018年 ME.Sugar. All rights reserved.
//

import UIKit

struct ClassStruct {
    var className: String
    var classEntity: UIViewController
}

class SRMDemoViewController: SRMBaseViewController {
    
    let tableView = UITableView()
    
    var models:[ClassStruct] = [ClassStruct]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _initTableView()
        makeDataSource()
        tableView.reloadData()
    }
    
    private func makeDataSource() {
        let jstest = "UIWebView与JavaScript交互"
        let jstestVC = SRMWebViewAndJsController()
        let jsModel = ClassStruct(className: jstest, classEntity: jstestVC)
        
        models.append(jsModel)
    }
    
    /// 配置tableView
    private func _initTableView () {
        tableView.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(SRMDemoCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension SRMDemoViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SRMDemoCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SRMDemoCell
        if models.count > 0 {
            let classStruct = models[indexPath.row]
            cell.textLabel?.text = classStruct.className
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = SRMPoemDetailController()
        self.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
        self.hidesBottomBarWhenPushed = false
//        if models.count > 0 {
//            let classStruct = models[indexPath.row]
//            let vc = classStruct.classEntity
//            vc.title = classStruct.className
//            self.navigationController?.pushViewController(vc, animated: true)
//        }
    }
}

