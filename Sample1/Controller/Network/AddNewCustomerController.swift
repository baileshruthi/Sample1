//
//  AddNewCustomerController.swift
//  Sample1
//
//  Created by iw02 on 29/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import Foundation
import UIKit

class AddNewCustomerController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func allotNewDeviveryBoyButton(_ sender: Any) {
    }
    
    @IBAction func addSubscriptionButton(_ sender: Any) {
    }
    
    @IBAction func addCustomerButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
