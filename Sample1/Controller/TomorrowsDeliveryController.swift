//
//  TomorrowsDeliveryController.swift
//  Sample1
//
//  Created by iw02 on 03/04/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import UIKit

class TomorrowsDeliveryController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let noOfProducts = ["170","30","250","180","30","250","180","30","250"]
    let productsName = ["XYZ MILK PACKETS (+5)","VIJAYA CURD (-10)","ABC PANEER (+5)","XYZ MILK PACKETS (-10)","VIJAYA CURD (+5)","ABC PANEER (-10)","XYZ MILK PACKETS (+5)","VIJAYA CURD (-10)","ABC PANEER (+5)" ]

    @IBOutlet weak var tomorrowsOrderTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "customPopUpCell", for: indexPath) as! TotalSubscriptionsCell
        customCell.number.text = noOfProducts[indexPath.row]
        customCell.product.text = productsName[indexPath.row]
        return customCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }

    @IBAction func tomorrowsOrder_TouchUpInside(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
