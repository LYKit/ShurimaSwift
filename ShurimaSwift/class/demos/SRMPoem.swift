//
//  SRMPoem.swift
//  ShurimaSwift
//
//  Created by zhuopin on 2020/1/7.
//  Copyright © 2020 ME.Sugar. All rights reserved.
//

import ObjectMapper

class SRMPoem: Mappable {
    var cacheAt: String?
    var content: String?
    var id: String?
    var matchTags: [String]?
    var popularity:  Int?
    var recommendedReason: String?
    
    
    required init?(map: Map) {

    }


    func mapping(map: Map) {
        cacheAt <- map["cacheAt"]
        content <- map["content"]
        id <- map["id"]
        matchTags <- map["matchTags"]
        popularity <- map["popularity"]
        recommendedReason <- map["recommendedReason"]
    }
}
