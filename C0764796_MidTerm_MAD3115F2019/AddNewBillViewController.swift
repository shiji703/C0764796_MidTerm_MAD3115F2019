//
//  AddNewBillViewController.swift
//  Project
//
//  Created by vamsi on 06/11/19.
//  Copyright © 2019 vamsi. All rights reserved.
//

import UIKit

protocol AddNewBillViewControllerDelegate:NSObject {
    func didSelectSaveBtn(_ bill:Bill)
}



class AddNewBillViewController: UIViewController {
    
    @IBOutlet weak var enterBillIDTextField: UITextField!
    @IBOutlet weak var enterAmountTextField: UITextField!
    @IBOutlet weak var enterBillDateTextField: UITextField!
    @IBOutlet weak var enterBillTypeTextField: UITextField!
    var pickerView = UIPickerView()
    var datePicker = UIDatePicker()
    let toolBar = UIToolbar()
    let billTypesArray = ["Hydro","Internet","Mobile"]
  weak var delegate:AddNewBillViewControllerDelegate?
    var billCopyObj:Bill?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupToolBar()
        setupPicker()
        setupTextFields()
    }
    
    func setupPicker(){
            pickerView.delegate = self
            enterBillTypeTextField.inputView = pickerView
            enterBillTypeTextField.inputAccessoryView = toolBar
        }
        
        
}
