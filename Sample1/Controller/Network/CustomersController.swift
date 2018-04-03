//
//  CustomersController.swift
//  Sample1
//
//  Created by iw02 on 28/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import Foundation
import UIKit

class CustomerController: UITableViewController {
    
    let customers = ["REVANTH", "LAKSHMI D", "RAHUL", "RAVI", "PRADEEP", "RANI", "REVANTH", "LAKSHMI D", "RAHUL", "RAVI", "PRADEEP", "RANI" ]
    let area = ["MADHAPUR", "HITECH CITY", "KONDAPUR", "KUKATPALLY", "HOUSING BOARD", "MOTHINAGAR", "UPPAL", "HITECH CITY", "KONDAPUR", "KUKATPALLY", "HOUSING BOARD", "MOTHINAGAR"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - TableView Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customerCell", for: indexPath) as! CustomerCell
        cell.customerName.text = customers[indexPath.row]
        cell.location.text = area[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "productAddButtton") as! ProductAddButton
        return headerCell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60.0
    }
    
//    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        let footerCell = tableView.dequeueReusableCell(withIdentifier: "footer") as! FooterCell
//        return footerCell
//    }
//    
    @IBAction func addNewConstumerButtonPressed(_ sender: Any) {
    }
}
