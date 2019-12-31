//
//  SRMTestViewController.swift
//  ShurimaSwift
//
//  Created by zhuopin on 2019/11/6.
//  Copyright © 2019 ME.Sugar. All rights reserved.
//

import UIKit
import PhotosUI
import Moya

class SRMTestViewController: SRMBaseViewController {
    
    let tableView = UITableView()
    var models = Array<Any>()
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        
        let rightBarItem = UIBarButtonItem(barButtonSystemItem: .organize, target: self, action: #selector(snapShot))
        self.navigationItem.rightBarButtonItem = rightBarItem;
    }
    
    
    func getDataRequest() {
        
    }
    
    @objc func snapShot () {
//        UIGraphicsBeginImageContextWithOptions(self.tableView.contentSize, true, 0.0)
//
//        let savedContentOffset = self.tableView.contentOffset
//        let saveFrame = self.tableView.frame
//
//        self.tableView.contentOffset = CGPoint(x: 0.0, y: 0.0)
//        self.tableView.frame = CGRect(x: 0, y: 0, width: self.tableView.width, height: self.tableView.contentSize.height)
//
//        self.tableView.layer.render(in: UIGraphicsGetCurrentContext()!)
//        let image = UIGraphicsGetImageFromCurrentImageContext()
//
//        self.tableView.contentOffset = savedContentOffset
//        self.tableView.frame = saveFrame
//
//        UIGraphicsEndImageContext()
//
//        UIImageWriteToSavedPhotosAlbum(image!, self, #selector(test), nil)
        animation()
    }
    
    func animation() {
        let delta = self.tableView.contentSize.height
        
        let point = CGPoint(x: 0, y: delta)
        UIView.animate(withDuration: 15.0) {
            self.tableView.setContentOffset(point, animated: false);
        }
    }
    
    @objc func test() {
        
    }

    func setupTableView() {
        self.view.addSubview(tableView)
        tableView.rowHeight = 150
        tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view);
        }
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
}

extension SRMTestViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)";
        return cell
    }
}
