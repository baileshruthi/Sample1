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
    
    @IBOutlet weak var addNewCostumerView: UIView!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var locationLine1: UITextField!
    @IBOutlet weak var locationLine2: UITextField!
    @IBOutlet weak var locationLine3: UITextField!
    @IBOutlet weak var locationLine4: UITextField!
    @IBOutlet weak var locationLine5: UITextField!
    @IBOutlet weak var locationLine6: UITextField!
    @IBOutlet weak var contactNumber: UITextField!
    @IBOutlet weak var neighbourAddress1: UITextField!
    @IBOutlet weak var neighbourAddress2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector (viewTapped))
        addNewCostumerView.addGestureRecognizer(tapGesture)
    }
    
    @objc func viewTapped() {
        name.endEditing(true)
        locationLine1.endEditing(true)
        locationLine2.endEditing(true)
        locationLine3.endEditing(true)
        locationLine4.endEditing(true)
        locationLine5.endEditing(true)
        locationLine6.endEditing(true)
        contactNumber.endEditing(true)
        neighbourAddress1.endEditing(true)
        neighbourAddress2.endEditing(true)
    }
    
    @IBAction func allotNewDeviveryBoyButton(_ sender: Any) {
    }
    
    @IBAction func addSubscriptionButton(_ sender: Any) {
    }
    
    @IBAction func addCustomerButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
