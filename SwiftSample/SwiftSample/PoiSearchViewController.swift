//
//  PoiSearchViewController.swift
//  SwiftSample
//
//  Created by 萱島 克英 on 2014/08/08.
//  Copyright (c) 2014年 萱島 克英. All rights reserved.
//

import Foundation
import UIKit

class PoiSearchViewController : UIViewController {
    var navigationBar: UINavigationBar=UINavigationBar()
    var poiSearchResultTableView : PoiSearchResultTableView = PoiSearchResultTableView()

    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    override init() {
        super.init()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

    }
    
}