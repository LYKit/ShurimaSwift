//
//  SRMPoemDetailController.swift
//  ShurimaSwift
//
//  Created by zhuopin on 2019/12/30.
//  Copyright © 2019 ME.Sugar. All rights reserved.
//

import UIKit
import Moya


enum MoyaApi {
    case detail //今日诗词详情
}

class SRMPoemDetailController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
//        https://v2.jinrishici.com/one.json
        let provider = MoyaProvider<MoyaApi>()
        provider.request(MoyaApi.detail) { result in
            if case let .success(response) = result {
                let mapJson = try? response.mapJSON()
                print(mapJson)
            }
        }
    }
}


extension MoyaApi : TargetType {
    var baseURL: URL {
        return URL.init(string: "https://v2.jinrishici.com/one.json")!
    }

    var path: String {
        return ""
    }

    var method: Moya.Method {
        return .get
    }

    var sampleData: Data {
        return Data(base64Encoded: "just for test")!
    }

    var task: Task {
        return .requestParameters(parameters: ["" : ""], encoding: URLEncoding.default)
    }

    var headers: [String : String]? {
        return ["Content-type" : "application/json"]
    }
}
