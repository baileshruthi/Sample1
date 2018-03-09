//
//  UnableToDeliverController.swift
//  Sample1
//
//  Created by iw02 on 07/03/18.
//  Copyright © 2018 iw02. All rights reserved.
//

import Foundation
import UIKit

class UnableToDeliver: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    //text picker view variables
    var productArray = ["Milk","Paneer","Tofu","Curd","Butter","Cheese","Cream"]
    var nameArray = ["Sai","Shiva","Raju","Narshima","Kattie","Sunita","Srinu"]
    let picker = UIPickerView()

    
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var productPicker: UITextField!
    @IBOutlet weak var deliveryBoyNamePicker: UITextField!
    @IBOutlet weak var fromDate: UITextField!
    @IBOutlet weak var toDate: UITextField!
    
    //text date picker variables
    var datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        
        //binding textfield to picker
        productPicker.inputView = picker
        //deliveryBoyNamePicker.inputView = picker
        
        createDatePicker()
    }
    
    //MARK:- Function of picker view
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        picker.backgroundColor = UIColor.lightGray
        
        return productArray.count
      
     }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       
            return productArray[row]
       
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       
        productPicker.text = productArray[row]
        self.view.endEditing(false)
    }
    
    //MARK:- Function of datePicker
    
    func createDatePicker() {
        
        //format for picker
        datePicker.datePickerMode = .date
        
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //bar button item
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneButton], animated: false)
        
        fromDate.inputAccessoryView = toolbar
        
        //assigning Date Picker to text field
        fromDate.inputView = datePicker
     }
    
    @objc func donePressed() {
        //format date
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        
        fromDate.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    @IBAction func unableToDeliverButtonPressed(_ sender: Any) {
        print("Message sent to customers")
    }
    
    
}
