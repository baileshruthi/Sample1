//
//  AddNewDeliveryBoyController.swift
//  Sample1
//
//  Created by iw02 on 29/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import Foundation
import UIKit

class  AddNewDeliveryBoyController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let customers = [ "REVANTH", "LAKSHMI D", "RAHUL", "RAVI", "PRADEEP", "RANI" ]
    let area = ["MADHAPUR", "HITECH CITY", "KONDAPUR", "KUKATPALLY", "HOUSING BOARD", "MOTHINAGAR"]
    
    
    @IBOutlet weak var addNewBoyView: UIView!
    @IBOutlet weak var customersTableView: UITableView!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var deliveryBoyName: UITextField!
    @IBOutlet weak var contactNumber: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customersTableView.dataSource = self
        customersTableView.delegate = self
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector (viewTapped))
        addNewBoyView.addGestureRecognizer(tapGesture)
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customerCell", for: indexPath) as! CustomerCell
        cell.customerName.text = customers[indexPath.row]
        cell.location.text = area[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    //TODO: Declare tableViewTapped here:
    @objc func viewTapped () {
        location.endEditing(true)
        deliveryBoyName.endEditing(true)
        contactNumber.endEditing(true)
    }
    
    @IBAction func addCustomersButtonPressed(_ sender: Any) {
        let viewController = storyboard?.instantiateViewController(withIdentifier: "customers")
        self.navigationController?.pushViewController(viewController!, animated: true)
    }
    
    @IBAction func addDeliveryBoyButtonPressed(_ sender: Any) {
        print("add delivery boy button pressed")
        navigationController?.popToRootViewController(animated: true)
    }
    
}
