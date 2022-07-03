//
//  ViewController.swift
//  Brain-App
//
//  Created by Lowna Letticia Cereño Franceschi on 27-06-22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var signup: UIButton!
    @IBOutlet weak var textFieldEmail: UITextField!
    
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var login: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        login.layer.cornerRadius = 10
        login.layer.borderWidth = 1
        
        textFieldEmail.placeholder = "example@icloud.com"
        textFieldPassword.placeholder = "**********"

        
    }

    @IBAction func loginAction(_ sender: Any) {
        
        
    }
    
    @IBAction func signupAction(_ sender: Any) {
    }
}

    

