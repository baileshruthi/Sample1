//
//  PaymentCell.swift
//  Sample1
//
//  Created by iw02 on 04/04/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import UIKit

class PaymentCell: UITableViewCell {

    @IBOutlet weak var customerName: UILabel!
    @IBOutlet weak var paymentDetails: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func approveButton(_ sender: Any) {
    }
    
    @IBAction func rejectButton(_ sender: Any) {
    }
    
}
