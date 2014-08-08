//
//  PoiValue.swift
//  SwiftSample
//
//  Created by 萱島 克英 on 2014/08/08.
//  Copyright (c) 2014年 萱島 克英. All rights reserved.
//

import Foundation

class PoiValue {
    var name:   String
    var lon:    Int32
    var lat:    Int32
    var nodeId: String
    
    init(name:String , lon:Int32 , lat:Int32 , nodeId:String) {
        self.name = name
        self.lon    = lon
        self.lat    = lat
        self.nodeId = nodeId
        
    }
}