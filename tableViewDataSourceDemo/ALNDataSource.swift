//
//  ALNDataSource.swift
//  tableViewDataSourceDemo
//
//  Created by AlienLi on 15/12/18.
//  Copyright © 2015年 MarcoLi. All rights reserved.
//

import UIKit


class ALNDataSource: NSObject, UITableViewDataSource {

    typealias configureCell = ((AnyObject,AnyObject) -> Void)

    var block:configureCell
    var items:[AnyObject]?
    var identifier: String?
    
    init(items:[AnyObject],identifier:String, block:configureCell) {
        self.items = items
        self.block = block
        self.identifier = identifier
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (self.items?.count)!
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(self.identifier!, forIndexPath: indexPath) as UITableViewCell
        
        let item = items![indexPath.row]
        block(cell,item)
        
        return cell
    }

}


