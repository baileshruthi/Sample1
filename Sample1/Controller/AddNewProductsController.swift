//
//  AddNewProductsController.swift
//  Sample1
//
//  Created by iw02 on 13/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import Foundation
import UIKit

class AddNewProductsController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var productArray = ["Milk","Paneer","Tofu","Curd","Butter","Cheese","Cream"]
    var brandArray = ["Amul","Vijaya","Heritage","Masqati","Dodla"]
    var quantityArray = ["10","20","30","40","50","60","70","80","90","100"]
    
    //pickerView variables
    let productPicker = UIPickerView()
    let brandPicker = UIPickerView()
    let quantityPicker = UIPickerView()
    
    @IBOutlet weak var type: UITextField!
    @IBOutlet weak var brand: UITextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var quantity: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productPicker.dataSource = self
        productPicker.delegate = self
        
        brandPicker.dataSource = self
        brandPicker.delegate = self
        
        quantityPicker.dataSource = self
        quantityPicker.delegate = self
        
        //bindind textfield to picker
        type.inputView = productPicker
        brand.inputView = brandPicker
        quantity.inputView = quantityPicker
        
    }
    
    //MARK:- Function of picker view
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        productPicker.backgroundColor = UIColor.lightGray
        if pickerView == productPicker {
            return productArray.count
        }
        if pickerView == brandPicker {
            return brandArray.count
        }
        if pickerView == quantityPicker {
            return quantityArray.count
        }
        else {
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == productPicker {
            return productArray[row]
        }
        if pickerView == brandPicker {
            return brandArray[row]
        }
        if pickerView == quantityPicker {
            return quantityArray[row]
        }
        else {
            return nil
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == productPicker {
            type.text = productArray[row]
        }
        if pickerView == brandPicker {
            brand.text = brandArray[row]
        }
        if pickerView == quantityPicker {
            quantity.text = quantityArray[row]
        }
        self.view.endEditing(false)
    }
    
    
    @IBAction func saveChangesButtonPressed(_ sender: Any) {
        print("save changes button pressed")
    }
}
