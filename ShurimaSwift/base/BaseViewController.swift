//
//  BaseViewController.swift
//  ShurimaSwift
//
//  Created by 赵旭 on 2018/3/22.
//  Copyright © 2018年 ME.Sugar. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @objc func bank(){
        
        self.navigationController?.popViewController(animated: false)
        
    }
    
    @objc func setNavTitle(title:NSString){
        
        self.navigationItem.title = title as String
     
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
