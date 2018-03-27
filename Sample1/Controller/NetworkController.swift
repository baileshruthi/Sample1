//
//  NetworkController.swift
//  Sample1
//
//  Created by iw02 on 27/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import Foundation
import UIKit

class NetworkContoller: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - TableView Datasource Methods
    
    // Declare numberOfRowsInSection here:
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // Declare cellForRowAtIndexPath here:
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let productsCell = tableView.dequeueReusableCell(withIdentifier: "addLocation", for:indexPath)
//        productsCell.productName.text = productsArray[indexPath.row]
//        //productsCell.productName.textAlignment =  NSTextAlignment.center
//        //productsCell.textLabel?.textColor = UIColor.black
//        productsCell.productName.font=UIFont.boldSystemFont(ofSize: 17.0)
        return productsCell
    }
   
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "networkTabCell") as! NetworkCell
        return headerCell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70.0
    }
    
    @IBAction func addNewLocationButtonPressed(_ sender: Any) {
    }
    
}
