//
//  FoundationAdd.swift
//  ERP
//
//  Created by jinghua on 17/3/31.
//  Copyright © 2017年 GXERP. All rights reserved.
//

import Foundation

extension String {
    
    subscript (r: Range<Int>) -> String {
        get {
            let startIndex = self.index(self.startIndex, offsetBy: r.lowerBound)
            let endIndex = self.index(self.startIndex, offsetBy: r.upperBound)
            return String(self[startIndex..<endIndex])
        }
    }
    
    func isBlankForParameter() -> String {
        if self.isEmpty {
            return ""
        } else {
            return self
        }
    }
}
