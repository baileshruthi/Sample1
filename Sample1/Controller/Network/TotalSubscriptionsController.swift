//
//  TotalSubscriptionsController.swift
//  Sample1
//
//  Created by iw02 on 03/04/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import UIKit

class TotalSubscriptionsController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let noOfProducts = ["180","30","250","180","30","250","180","30","250"]
    let productsName = ["XYZ MILK PACKETS","VIJAYA CURD","ABC PANEER","XYZ MILK PACKETS","VIJAYA CURD","ABC PANEER","XYZ MILK PACKETS","VIJAYA CURD","ABC PANEER" ]

    @IBOutlet weak var totalSubscriptionDetailsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noOfProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "subscriptionCell", for: indexPath) as! TotalSubscriptionsCell
        customCell.number.text = noOfProducts[indexPath.row]
        customCell.product.text = productsName[indexPath.row]
        return customCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }
    
    @IBAction func totalSubscription_TouchUpInside(_ sender: Any) {
        dismiss(animated: true)
    }
}
