//
//  ProductCell.swift
//  Sample1
//
//  Created by iw02 on 19/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
