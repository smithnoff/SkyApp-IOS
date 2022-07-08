//
//  classPrincipalValidations.swift
//  SkyNoff App
//
//  Created by Juan Acuña on 07-07-22.
//

import Foundation

//Validar email
func validEmail(emailID:String) -> Bool {
       let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
       let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
       return emailTest.evaluate(with: emailID)
   }



