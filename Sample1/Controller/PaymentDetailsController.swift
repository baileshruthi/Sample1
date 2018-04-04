//
//  PaymentDetailsController.swift
//  Sample1
//
//  Created by iw02 on 04/04/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import Foundation
import UIKit

class PaymentDetailsController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var paymentDetailsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        paymentDetailsTable.delegate = self
        paymentDetailsTable.dataSource = self
        
        paymentDetailsTable.separatorStyle = .none
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "paymentCell", for: indexPath) as! PaymentCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 108.0
    }
    
}
