//
//  ProductsController.swift
//  Sample1
//
//  Created by iw02 on 16/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import Foundation
import UIKit

class MyProductsController: UITableViewController {
    
    let productsArray = ["XYZ Milk Product (250ml)", "XYZ Milk Product (250ml)", "XYZ Milk Product (250ml)", "XYZ Milk Product (250ml)", "XYZ Milk Product (250ml)", "XYZ Milk Product (250ml)"]
    
  
    @IBOutlet var products: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        products.dataSource = self
        products.delegate = self
        
       // products.separatorStyle = .
    }
    
    //MARK: - TableView Datasource Methods
    
    // Declare numberOfRowsInSection here:
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsArray.count
    }

    // Declare cellForRowAtIndexPath here:
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let productsCell = tableView.dequeueReusableCell(withIdentifier: "productCell", for:indexPath) as! ProductCell
        productsCell.productName.text = productsArray[indexPath.row]
        //productsCell.productName.textAlignment =  NSTextAlignment.center
        //productsCell.textLabel?.textColor = UIColor.black
        productsCell.productName.font=UIFont.boldSystemFont(ofSize: 17.0)
        return productsCell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "productAddButtton") as! ProductAddButton
        return headerCell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70.0
    }
    
    
    
    
}
