//
//  AddNewLocation.swift
//  Sample1
//
//  Created by iw02 on 27/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import Foundation
import UIKit

class AddNewLocationController: UIViewController {
    
    
    @IBOutlet weak var locationView: UIView!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var pin: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector (viewTapped))
        locationView.addGestureRecognizer(tapGesture)
    }
    
    //TODO: Declare tableViewTapped here:
    @objc func viewTapped () {
        location.endEditing(true)
        pin.endEditing(true)
    }
    
    @IBAction func addLocationButtonPressed(_ sender: Any) {
        print("add location button pressed")
        navigationController?.popToRootViewController(animated: true)
    }
}
