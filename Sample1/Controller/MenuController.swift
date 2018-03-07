//
//  MenuController.swift
//  Sample1
//
//  Created by iw02 on 05/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import Foundation
import UIKit

class MenuController : UITableViewController {
    
    
   
    @IBOutlet var menuTableView: UITableView!
    
    let menuArray = ["Home", "Products", "Networks", "Reports", "Payments", "My Account", "ShareApp", "Logout"]
   // let imageArray: [UIImage] = [team-1, team-2, team-3, team-4]
    let nameArray = ["Dealer1","Dealer2","Dealer3","Dealer4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuTableView.delegate = self
        menuTableView.dataSource = self
        
        menuTableView.separatorStyle = .none
    }
    
    //MARK: - TableView DataSource Methods
    
    //TODO: Declare numberOfRowsInSection here:
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuArray.count
    }
    
    //TODO: Declare cellForRowAtIndexPath here:
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        menuTableView.backgroundView?.backgroundColor = UIColor.black
        let menuCell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath)
        menuCell.textLabel?.text = menuArray[indexPath.row]
        menuCell.textLabel?.textAlignment =  NSTextAlignment.center
        menuCell.textLabel?.textColor = UIColor.white
        menuCell.textLabel?.font=UIFont.boldSystemFont(ofSize: 17.0)
        return menuCell
    }
    
    //TODO: Declare configureTableView here:
//    func configureTableView () {
//        messageTableView.rowHeight = UITableViewAutomaticDimension
//        messageTableView.estimatedRowHeight = 120.0
//    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 68.0
    }
    
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
       
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "customHeaderCell") as! HeaderCell
       // cell.headerImage.image = imageArray[section]
        headerCell.headerLabel.text = nameArray[section]
        
        return headerCell
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 123

    }
    
}
