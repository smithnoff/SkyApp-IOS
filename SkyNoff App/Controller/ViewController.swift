//
//  ViewController.swift
//  SkyNoff App
//
//  Created by Willy Nuñez on 03-07-22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ViewLogo: UIView!
    @IBOutlet weak var logoView: UIImageView!
    @IBOutlet weak var labelWelcome: UILabel!
    @IBOutlet weak var labelSky: UILabel!
    @IBOutlet weak var labelUser: UILabel!
    @IBOutlet weak var emailTexfield: UITextField!
    @IBOutlet weak var labelPass: UILabel!
    @IBOutlet weak var passTexfield: UITextField!
    @IBOutlet weak var labelSignup: UIStackView!
    @IBOutlet weak var forgotBut: UIButton!
    @IBOutlet weak var loginBut: UIButton!
    @IBOutlet weak var signupBut: UIButton!
    var validate = false
   
    override func viewDidLoad() {
        super.viewDidLoad()
        buttomRadius()
    }

    @IBAction func forgotButtom(_ sender: Any) {
    }
    
    @IBAction func loginButtom(_ sender: Any) {
        validateEmpty()
        if validate == true{
            messageEmptyFields(enviar:"Ingresaste")
        }else{
        
        }
    }
    
    //Validador de inicio de sesión
    func validateEmpty(){
        validate = true
        let passTexfield = passTexfield.text
        let emailTexfield = emailTexfield.text
      
        if emailTexfield?.isEmpty ?? true && passTexfield?.isEmpty ?? true {
            validate = false
            messageEmptyFields(enviar:"Los campos email y contraseña se encuentran vacíos")
        } else if emailTexfield?.isEmpty ?? true  {
            validate = false
            messageEmptyFields(enviar:"El campo email se encuentra vacío")
        } else if validEmail(emailID: emailTexfield!) == false{
            validate = false
            messageEmptyFields(enviar:"Por favor colocar una dirección de correo valida")
        } else if passTexfield?.isEmpty ?? true {
            validate = false
            messageEmptyFields(enviar:"El campo contraseña se encuentra vacío")
        }
    }
    
    //Alerta
    func messageEmptyFields(enviar: String){
        let message = UIAlertController(title: "Alerta", message: " \(enviar) ", preferredStyle:.alert)
        let cancelButtom = UIAlertAction(title: "Cancelar", style:.destructive)
        message.addAction(cancelButtom)
        present(message, animated: true)
    }
    
   
    @IBAction func signupButtom(_ sender: Any) {
    }
    
    // Diseño Botones
    func buttomRadius(){
        loginBut.layer.cornerRadius = 10
        loginBut.layer.borderWidth = 2
        loginBut.layer.borderColor = CGColor(red: 168/255, green: 0/255, blue: 217/255, alpha: 1)
        
        emailTexfield.layer.cornerRadius = 10
        emailTexfield.layer.backgroundColor = CGColor(red: 27/255, green: 27/255, blue: 27/255, alpha: 1)
        emailTexfield.layer.borderWidth = 2
        emailTexfield.layer.borderColor = CGColor(red: 168/255, green: 0/255, blue: 217/255, alpha: 1)
    
        passTexfield.layer.cornerRadius = 10
        passTexfield.layer.backgroundColor = CGColor(red: 27/255, green: 27/255, blue: 27/255, alpha: 1)
        passTexfield.layer.borderWidth = 2
        passTexfield.layer.borderColor = CGColor(red: 168/255, green: 0/255, blue: 217/255, alpha: 1)
        //passTexfield.attributedPlaceholder = NSAttributedString(string:"Ingresa tu contraseña", attributes:[NSAttributedString.Key.foregroundColor: UIColor.white])
        
    }

}
