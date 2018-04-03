//
//  DeliveryBoyController.swift
//  Sample1
//
//  Created by iw02 on 28/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import Foundation
import UIKit

class DeliveryBoyController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let array = ["team-1", "team-2", "team-3", "team-4", "team-1", "team-2", "team-3", "team-4", "team-1", "team-2"]
    let names = ["Shiva", "Sunita", "Kristen", "Narshima", "Shiva", "Sunita", "Kristen", "Narshima", "Shiva", "Sunita"]
    let numbers = ["9030321350", "9030321350", "9030321350", "9030321350", "9030321350", "9030321350", "9030321350", "9030321350", "9030321350", "9030321350"]
    
    @IBOutlet weak var deliveryBoy: UIView!
    @IBOutlet weak var deliveryBoyCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let itemSize = UIScreen.main.bounds.width/3 - 3
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(20, 0, 10, 0)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        
        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 3
        
        deliveryBoyCollectionView.collectionViewLayout = layout
    }
    
    //Number of views
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "deliveryBoyCell", for: indexPath) as! DeliveryBoyCell
        cell.boyImage.image = UIImage(named: array[indexPath.row] + ".JPG")
        cell.boyName.text = names[indexPath.row]
        cell.boyPhoneNumber.text = numbers[indexPath.row]
        return cell
    }
    
    @IBAction func addNewDeliveryBoyButtonPressed(_ sender: Any) {
       
    }
}
