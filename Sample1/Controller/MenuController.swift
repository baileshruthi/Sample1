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
    
    var randomIndex1 : Int = 0
    
    @IBOutlet var menuTableView: UITableView!
    
    let menuArray = ["Home", "Products", "Networks", "Reports", "Payments", "My Account", "ShareApp", "Logout"]
    let nameArray = ["Dealer1","Dealer2","Dealer3","Dealer4"]
    let imageArray = ["team-1","team-2","team-3","team-4"]
    
    let identities = ["A","B","C","D","E","F"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuTableView.delegate = self
        menuTableView.dataSource = self
        menuTableView.separatorStyle = .none
        
    }
    
    //MARK: - TableView DataSource Methods
    
    // Declare numberOfRowsInSection here:
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuArray.count
    }
    
    // Declare cellForRowAtIndexPath here:
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        menuTableView.backgroundView?.backgroundColor = UIColor.black
        let menuCell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath)
        menuCell.textLabel?.text = menuArray[indexPath.row]
        menuCell.textLabel?.textAlignment =  NSTextAlignment.center
        menuCell.textLabel?.textColor = UIColor.white
        menuCell.textLabel?.font=UIFont.boldSystemFont(ofSize: 17.0)
        return menuCell
    }
    
    // Declare didSelectRow here:
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 || indexPath.row == 6 || indexPath.row == 7 {
            navigationController?.popToRootViewController(animated: true)
        } else {
            let mcName = identities[indexPath.row]
            let viewController = storyboard?.instantiateViewController(withIdentifier: mcName)
            self.navigationController?.pushViewController(viewController!, animated: true)
        }
    }

    // Declare configureTableView here:
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 68.0
    }
    
    func updateHeaderImages() {
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "customHeaderCell") as! HeaderCell
        randomIndex1 = Int(arc4random_uniform(4))
        headerCell.headerImage.image = UIImage(named: imageArray[randomIndex1])
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "customHeaderCell") as! HeaderCell
        headerCell.headerLabel.text = nameArray[section]
        
        return headerCell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 125.0
    }
    
    
    
   
}
