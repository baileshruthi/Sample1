//
//  ViewController.swift
//  Sample1
//
//  Created by iw02 on 05/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func menuButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToMenu", sender: self)
    }
    
    @IBAction func inStockButtonPressed(_ sender: Any) {
       
    }
    
    @IBAction func tomorrowsOrderButtonPressed(_ sender: Any) {
    }
    
    @IBAction func unableToDeliverProductsButtonPressed(_ sender: Any) {
       // performSegue(withIdentifier: "goToUnableToDeliver", sender: self)
    }
    
}

