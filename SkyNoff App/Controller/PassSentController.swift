//
//  PassSentController.swift
//  SkyNoff App
//
//  Created by Juan Acuña on 10-07-22.
//

import UIKit

class PassSentController: UIViewController {

    @IBAction func logIn(_ sender: Any) {
       emailVal = true
        let logIn = self.storyboard?.instantiateViewController(withIdentifier: "PrincipalController") as! ViewController
            self.navigationController?.pushViewController(logIn, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
