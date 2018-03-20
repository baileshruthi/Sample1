//
//  EditProductController.swift
//  Sample1
//
//  Created by iw02 on 20/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import UIKit

class EditProductController: UITableViewController {
    
    let editLabelArray = ["Availabilty","Limit for Location","Price"]
    let textArray = ["Available","-NA-","50/-"]
    
    @IBOutlet var editProductTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        editProductTable.delegate = self
        editProductTable.dataSource = self
       // editProductTable.separatorStyle = .none
        
    }
    
    //MARK: - TableView Datasource Methods
    
    // Declare numberOfRowsInSection here:
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    // Declare cellForRowAtIndexPath here:
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let editCell = tableView.dequeueReusableCell(withIdentifier: "customEditCell", for:indexPath) as! EditProductCell
        editCell.editProductCellLabel.text = editLabelArray[indexPath.row]
        editCell.editProductCellLabel.font=UIFont.boldSystemFont(ofSize: 17.0)
        editCell.editProductCellText.text = textArray[indexPath.row]
        return editCell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "customEditHeaderCell") as! EditProductHeaderCell
        return headerCell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 160.0
    }
    
}

