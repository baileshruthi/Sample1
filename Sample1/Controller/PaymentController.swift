//
//  PaymentController.swift
//  Sample1
//
//  Created by iw02 on 04/04/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import Foundation
import UIKit

class PaymentController: UIViewController {
    
    @IBOutlet weak var paymentView: UIView!
    @IBOutlet weak var products: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var fromDate: UITextField!
    @IBOutlet weak var toDate: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector (viewTapped))
        paymentView.addGestureRecognizer(tapGesture)
    }
    
    @objc func viewTapped() {
        products.endEditing(true)
        location.endEditing(true)
        fromDate.endEditing(true)
        toDate.endEditing(true)
    }
    
    @IBAction func getReportButtonPressed(_ sender: Any) {
    }
    
    @IBAction func confirmPaymentButton(_ sender: Any) {
    }
    
    @IBAction func sendRemindersButtonPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
