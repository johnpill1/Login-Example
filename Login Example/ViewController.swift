//
//  ViewController.swift
//  Login Example
//
//  Created by John Pill on 20/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var storedUsername = "Username"
    var storedPassword = "Password"
    
    @IBOutlet var usernameTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        if storedUsername.lowercased() == usernameTextfield.text!.lowercased() && storedPassword == passwordTextfield.text {
            
        performSegue(withIdentifier: "loginSuccess", sender: self)
        }
        else {
            performSegue(withIdentifier: "loginFailed", sender: self)

        }
        
    }
    
}

