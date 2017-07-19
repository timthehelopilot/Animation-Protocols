//
//  LoginViewController.swift
//  AnimationProtocols
//
//  Created by Timothy Barrett on 7/18/17.
//  Copyright © 2017 Timothy Barrett. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
  
  
  @IBOutlet weak var emailTextField: CustomTextView!
  @IBOutlet weak var passwordTextField: CustomTextView!
  @IBOutlet weak var logInButton: CustomButton!
  @IBOutlet weak var errorLabel: CustomLabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  @IBAction func LoginButonTapped(_ sender: CustomButton) {
    emailTextField.jitter()
    passwordTextField.jitter()
    logInButton.jitter()
    errorLabel.flash()
  }
}

