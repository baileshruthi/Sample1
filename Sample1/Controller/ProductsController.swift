//
//  myProductsController.swift
//  Sample1
//
//  Created by iw02 on 14/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import Foundation
import UIKit

class ProductsController: UITableViewController {
    
    let productArray = ["Milk", "Curd", "Cheese", "Paneer", "Butter", "Tofu"]
    
    @IBOutlet weak var products: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        products.delegate = self
        products.dataSource = self
        products.separatorStyle = .none
    }
    
    //MARK: - TableView DataSource Methods
    
    // Declare numberOfRowsInSection here:
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productArray.count
    }
    
    // Declare cellForRowAtIndexPath here:
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        products.backgroundView?.backgroundColor = UIColor.gray
        let productCell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath)
        productCell.textLabel?.text = productArray[indexPath.row]
        productCell.textLabel?.textAlignment =  NSTextAlignment.center
        productCell.textLabel?.textColor = UIColor.white
        productCell.textLabel?.font=UIFont.boldSystemFont(ofSize: 17.0)
        return productCell
    }
    
//    // Declare didSelectRow here:
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        navigationController?.pushViewController(MenuController(), animated: true)
//        let segueIdentifier: String
//        switch indexPath.row {
//        case 0: //For "Home"
//            segueIdentifier = "goToProducts"
//        case 1: //For "Products"
//            segueIdentifier = "goToProducts"
//        default: //For "three"
//            segueIdentifier = "goToProducts"
//        }
//        self.performSegue(withIdentifier: segueIdentifier, sender: self)
//    }

    
    @IBAction func addNewProductButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToAddNewProducts", sender: self)
    }
}
