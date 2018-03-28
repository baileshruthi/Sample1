//
//  CustomerCell.swift
//  Sample1
//
//  Created by iw02 on 28/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import UIKit

class CustomerCell: UITableViewCell {
    
    @IBOutlet weak var customerName: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var pin: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
