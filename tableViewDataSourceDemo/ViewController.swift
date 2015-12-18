//
//  ViewController.swift
//  tableViewDataSourceDemo
//
//  Created by AlienLi on 15/12/18.
//  Copyright © 2015年 MarcoLi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var dataSource: ALNDataSource!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let configureCellBlock = {
            (cell: AnyObject, item: AnyObject) in
            
            guard let tableViewCell = cell as? ALNTableViewCell  else {
                return
            }
            guard let title = item as? String else {
                return
            }
            tableViewCell.title.text = title
        }
        
        dataSource = ALNDataSource(items: ["x"], identifier: "ALNTableViewCell", block: configureCellBlock)
        tableView.dataSource = dataSource
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

