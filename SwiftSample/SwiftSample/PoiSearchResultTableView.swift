//
//  PoiSearchResultTableView.swift
//  SwiftSample
//
//  Created by 萱島 克英 on 2014/08/08.
//  Copyright (c) 2014年 萱島 克英. All rights reserved.
//

import Foundation
import UIKit

class PoiSearchResultTableView : UIView ,UITableViewDelegate,UITableViewDataSource {
    var poiArrays:[PoiValue] = [PoiValue]()
    var tableView: UITableView = UITableView()

    
    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    override init() {
    
        super.init()
        var poi:PoiValue = PoiValue(name: "ナビタイムジャパン", lon: 40000303, lat: 23223233, nodeId: "00003303")
        poiArrays.append(poi)
        poi = PoiValue(name: "東京タワー", lon: 40000303, lat: 23223233, nodeId: "00003303")
        poiArrays.append(poi)
        poi = PoiValue(name: "品川駅", lon: 40000303, lat: 23223233, nodeId: "00003303")
        poiArrays.append(poi)
        
        tableView.delegate = self
        tableView.dataSource = self
   
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        navigationBar.frame = CGRectMake(0, 50, 320, 50)
//        navigationBar.backgroundColor = UIColor.blackColor()
//        self.view.addSubview(navigationBar)
//        
//        var poi:PoiValue = PoiValue(name: "ナビタイムジャパン", lon: 40000303, lat: 23223233, nodeId: "00003303")
//        poiArrays.append(poi)
//        poi = PoiValue(name: "東京タワー", lon: 40000303, lat: 23223233, nodeId: "00003303")
//        poiArrays.append(poi)
//        poi = PoiValue(name: "品川駅", lon: 40000303, lat: 23223233, nodeId: "00003303")
//        poiArrays.append(poi)
//        NSLog("loadView Call ")
//    }
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cellIdentifier = "cellID";
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as? CustomCell  //型がUITableViewCellだったら
        
        if cell == nil {
            cell = CustomCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: cellIdentifier)
        }
        NSLog("test:%@","")
        cell?.update(self.poiArrays[indexPath.row])
        return cell;
    }

}