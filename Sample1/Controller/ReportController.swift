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
    
    @IBOutlet weak var reportsView: UIView!
    @IBOutlet weak var products: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var fromDate: UITextField!
    @IBOutlet weak var toDate: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector (viewTapped))
        reportsView.addGestureRecognizer(tapGesture)
    }
    
    @objc func viewTapped() {
        products.endEditing(true)
        location.endEditing(true)
        fromDate.endEditing(true)
        toDate.endEditing(true)
    }
    
    @IBAction func getReportButtonPressed(_ sender: Any) {
         navigationController?.popToRootViewController(animated: true)
    }
}
