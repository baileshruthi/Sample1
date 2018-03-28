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
    
    let location = ["MADHAPUR","HITECH CITY","KONDAPUR","KUKATPALLY","HOUSING BOARD","MOTHINAGAR","UPPAL","AYYAPPA SOCIETY","MIYAPUR"]
    let pinCode = ["500081", "521445", "500014", "547894", "500081", "521445", "500014", "547894","500049"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - TableView Datasource Methods
    
    // Declare numberOfRowsInSection here:
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return location.count
    }

    // Declare cellForRowAtIndexPath here:
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let networkCell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for:indexPath) as! LocationCell
        networkCell.locationName.text = location[indexPath.row]
        networkCell.locationPinCode.text = pinCode[indexPath.row]
//        locationCell.productName.text = productsArray[indexPath.row]
//        locationCell.productName.font=UIFont.boldSystemFont(ofSize: 17.0)
        return networkCell
    }
   
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "networkTabCell") as! NetworkCell
        return headerCell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 115.0
    }
    
  
    
}
