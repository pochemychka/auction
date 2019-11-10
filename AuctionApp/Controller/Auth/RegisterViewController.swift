//
//  RegisterPageViewController.swift
//  AuctionApp
//
//  Created by Alexey Olshevsky on 11/3/19.
//  Copyright © 2019 Alexey Olshevsky. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var userEmailtextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func registerButtonTapped(_ sender: Any) {
        let userEmail = userEmailtextField.text
        let userPassword = userPasswordTextField.text
        let userRepeatPassword = repeatPasswordTextField.text
        
        // Check for empty field
        if let userEmail = userEmail, let userPassword = userPassword, let userRepeatPassword = userRepeatPassword, userEmail.isEmpty || userPassword.isEmpty || userRepeatPassword.isEmpty {
            displayAlertMessage(vc: self, message: "All fields are required")
            return
        }
        
        // Check if passwords match
        if userRepeatPassword != userRepeatPassword {
            displayAlertMessage(vc: self, message: "Passwords don't match")
        }
        
        // Store data
        
        // Success
       
    }
}
