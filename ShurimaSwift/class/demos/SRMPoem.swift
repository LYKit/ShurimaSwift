//
//  SRMPoem.swift
//  ShurimaSwift
//
//  Created by zhuopin on 2020/1/7.
//  Copyright © 2020 ME.Sugar. All rights reserved.
//

import ObjectMapper

struct SRMPoem: Codable {
    var status: String?
    var data: SRMData?
    var token: String?
    var ipAddress: String?
    var warning: String?
}

struct SRMData: Codable {
    var id: String?
    var content: String?
    var popularity: Int?
    var origin: SRMOrigin?
    var matchTags: [String]?
    var recommendedReason: String?
    var cacheAt: String?
}

struct SRMOrigin: Codable {
    var title: String?
    var dynasty: String?
    var content: [String]?
}

struct SRMLunyu: Codable {
    var chapter: String?
    var paragraphs: [String]?
}
