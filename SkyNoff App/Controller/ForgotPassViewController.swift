//  SkyNoff App
//
//  Created by Juan Acuña on 07-07-22.
//


import UIKit


class ForgotPassViewController: UIViewController {
    @IBOutlet weak var emailTextForgot: UITextField!
    var validate = false

    @IBAction func recoverBut(_ sender: Any) {
        validate=true
        validateEmpty()
        if validate == true{
           //messageEmptyFields(enviar:"Se ha enviado un correo para poder restablecer su contraseña")
            let sentPass = self.storyboard?.instantiateViewController(withIdentifier: "PassSent") as! PassSentController
                self.navigationController?.pushViewController(sentPass, animated: true)
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Validador de inicio de sesión
    func validateEmpty(){
        validate = true
        let emailTexfield = emailTextForgot.text
      
        if emailTexfield?.isEmpty ?? true  {
            validate = false
            messageEmptyFields(enviar:"El campo email se encuentran vacío")
        }  else if validEmail(emailID: emailTexfield!) == false{
            validate = false
            messageEmptyFields(enviar:"Por favor colocar una dirección de correo valida")
        }
    }
    
    //Alerta
    func messageEmptyFields(enviar: String){
        let message = UIAlertController(title: "Alerta", message: " \(enviar) ", preferredStyle:.alert)
        let cancelButtom = UIAlertAction(title: "Cancelar", style:.destructive)
        message.addAction(cancelButtom)
        present(message, animated: true)
    }

}
