//
//  ALNTableViewCell.swift
//  tableViewDataSourceDemo
//
//  Created by AlienLi on 15/12/18.
//  Copyright © 2015年 MarcoLi. All rights reserved.
//

import UIKit

class ALNTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
