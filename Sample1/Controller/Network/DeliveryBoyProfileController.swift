//
//  DeliveryBoyProfileController.swift
//  Sample1
//
//  Created by iw02 on 29/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import Foundation
import UIKit

class DeliveryBoyProfileController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let labels = ["Name", "Mobile Number", "Locality"]
    let details = ["Dealer Name", "903021350", "Madhapur"]
    
    @IBOutlet weak var deliveryBoyPhoto: UIImageView!
    @IBOutlet weak var deliveryBoyDetails: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        deliveryBoyDetails.delegate = self
        deliveryBoyDetails.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let detailsCell = tableView.dequeueReusableCell(withIdentifier: "customDetailsCell", for: indexPath) as! DeliveryBoyDetailsCell
        detailsCell.detailsLabel.text = labels[indexPath.row]
        detailsCell.boyDetails.text = details[indexPath.row]
        return detailsCell
    }
    
    @IBAction func totalSubscriptionsButtonPressed(_ sender: Any) {
    }
    
    @IBAction func consumersButtonPressed(_ sender: Any) {
        let viewController = storyboard?.instantiateViewController(withIdentifier: "customers")
        self.navigationController?.pushViewController(viewController!, animated: true)
    }
    
}
