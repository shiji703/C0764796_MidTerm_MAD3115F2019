//
//  ViewController.swift
//  C0764796_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var rememberSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginBtnTapped(_ sender: Any) {
        switch validateLoginCredentials {
        case .valid:
            showAlert(withMessage: "Login Successfull",viewController: self,okCall:{
                self.moveToCustomersScreen()
            })
        case .invalid(let error):
            showAlert(withMessage: error,viewController: self)
        }
    }
   
    func moveToCustomersScreen(){
           if let billDetailsVC = self.storyboard?.instantiateViewController(identifier: "CustomerListTableViewController") as? CustomerListTableViewController{
                self.navigationController?.pushViewController(billDetailsVC, animated: true)
            }
        }
    }
    
//MARK: - Validation
extension LoginViewController {
    var validateLoginCredentials:UserValidationState {
        if emailTextField.text.isBlank {
            return .invalid(ATErrorMessage.Email.emptyNew)
        }
        else if !emailTextField.text!.isEmail {
            return .invalid(ATErrorMessage.Email.invalid)
        }
        else if passwordTextField.text.isBlank {
            return .invalid(ATErrorMessage.Password.newEmpty)
        }
        return .valid
    }
}


