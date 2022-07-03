//
//  ViewController.swift
//  issa_detalles
//
//  Created by Juan Acuña on 20-06-22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var text_contraseña: UITextField!
    @IBOutlet weak var text_correo: UITextField!
    @IBOutlet weak var ver_pass: UIImageView!
    var validador = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Botoningresar(_ sender: Any) {
        validar_vacio()
        if validador == true{
            print("Ingreso a valida si existe en bd")
        }else{
            
        }
        
    }
    
    
    
    //Validador de los campos si estan vacíos, incluyendo si es un correo lo que se esta ingresando
    func validar_vacio(){
        validador = true
        let txt_contraseña = text_contraseña.text
        let txt_correo = text_correo.text
      
        if txt_correo?.isEmpty ?? true && txt_contraseña?.isEmpty ?? true {
            validador=false
            mensaje_campos_vacios(enviar:"Los campos Email y Contraseña se encuentran vacíos")
        }else if txt_correo?.isEmpty ?? true  {
            validador=false
            mensaje_campos_vacios(enviar:"El campo Email se encuentra vacío")
        }else if es_correo_valido(emailID: txt_correo!) == false{
            validador=false
            mensaje_campos_vacios(enviar:"Por favor colocar una dirección de correo valida")
        }else if txt_contraseña?.isEmpty ?? true {
            validador=false
            mensaje_campos_vacios(enviar:"El campo Contraseña se encuentra vacío")
        }
    }
    
    //Realice una función para cualquier tipo de mensaje depende de la validación
    func mensaje_campos_vacios(enviar: String){
        let mensaje = UIAlertController(title: "Campo vacío", message: " \(enviar) ", preferredStyle:.alert)
        let bot_cancelar = UIAlertAction(title: "Cancelar", style:.destructive)
        mensaje.addAction(bot_cancelar)
        present(mensaje, animated: true)
    }
    
    //Función para validar si es un correo valido en la caja de texto
    func es_correo_valido(emailID:String) -> Bool {
           let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
           let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
           return emailTest.evaluate(with: emailID)
       }

    
}
    


