//
//  LocationCell.swift
//  Sample1
//
//  Created by iw02 on 28/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import UIKit

class LocationCell: UITableViewCell {

    @IBOutlet weak var locationPin: UIImageView!
    @IBOutlet weak var locationName: UILabel!
    @IBOutlet weak var locationPinCode: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
