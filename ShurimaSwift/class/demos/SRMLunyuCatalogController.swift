//
//  SRMLunyuCatalogController.swift
//  ShurimaSwift
//
//  Created by zhuopin on 2020/1/14.
//  Copyright © 2020 ME.Sugar. All rights reserved.
//

import UIKit

class SRMLunyuCatalogController: SRMBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let test = getJosn(resource: "lunyu")
        let array = test as! Array<Any>
        
        if array.count > 0 {
            for dict in array {
                print(dict)
                let lunyu = SRMLunyu()
                
//                let poem = try JSONDecoder().decode(SRMLunyu.self, from: dict)
            }
        }

    }
    
    func getJosn(resource: String) -> Any {
        if let path = Bundle.main.path(forResource: resource, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                return jsonResult
            } catch let error {
                print(error)
                return []
            }
        }
        return []
    }
}
