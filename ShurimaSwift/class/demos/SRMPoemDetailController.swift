//
//  SRMPoemDetailController.swift
//  ShurimaSwift
//
//  Created by zhuopin on 2019/12/30.
//  Copyright © 2019 ME.Sugar. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire
import AlamofireObjectMapper
import SnapKit

class SRMPoemDetailController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        let label = UILabel()
        self.view.addSubview(label)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.backgroundColor = .yellow
        
        
        label.snp.makeConstraints { make in
            make.top.equalTo(view).offset(20)
            make.left.equalTo(view).offset(20)
            make.right.equalTo(view).offset(-20)
            make.bottom.equalTo(view).offset(-34)
        }
        
                
        let url = "https://v2.jinrishici.com/one.json"
        Alamofire.request(url).responseJSON { response in
            do {
                let poem = try JSONDecoder().decode(SRMPoem.self, from: response.data!)
                label.text = poem.data?.origin?.content?.first
            } catch let error {
                print(error)
            }
        }
        
        
        
    }
}
