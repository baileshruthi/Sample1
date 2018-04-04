//
//  ReportController.swift
//  Sample1
//
//  Created by iw02 on 04/04/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import Foundation
import UIKit

class ReportController: UIViewController {
    
    @IBOutlet weak var products: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var fromDate: UITextField!
    @IBOutlet weak var toDate: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func getReportButtonPressed(_ sender: Any) {
         navigationController?.popToRootViewController(animated: true)
    }
}
