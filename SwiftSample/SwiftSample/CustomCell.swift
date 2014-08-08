//
//  CustomCell.swift
//  SwiftSample
//
//  Created by 萱島 克英 on 2014/08/08.
//  Copyright (c) 2014年 萱島 克英. All rights reserved.
//

import Foundation
import UIKit

class CustomCell : UITableViewCell {
    var poi : PoiValue!
    
    func update(poi: PoiValue) {
        self.poi = poi
        self.refresh()
    }
    
    func refresh() {
        self.textLabel.text = self.poi.name
    }
}