//
//  ViewController.swift
//  Machinetest_one
//
//  Created by JIJO G OOMMEN on 03/06/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nAmeoutlet: UITextField!
    
    @IBOutlet weak var cpAsswordoutlet: UITextField!
    @IBOutlet weak var pAsswordoutlet: UITextField!
    @IBOutlet weak var eMailoutlet: UITextField!
    @IBOutlet weak var pHoneoutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pAsswordoutlet.isSecureTextEntry = true
    }

    @IBAction func rEgaCtion(_ sender: Any) {
        
        if (nAmeoutlet.text == "" || pHoneoutlet.text == "" || eMailoutlet.text == "" || pAsswordoutlet.text == "" || cpAsswordoutlet.text == ""){
            
            let alert = UIAlertController(title: "Enter all Fields", message: "Fields Missing", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert,animated: true,completion: nil)
        }
        
        else if (pAsswordoutlet.text != cpAsswordoutlet.text ){
            
            let alert_1 = UIAlertController(title: "Miss Match", message: "Password confirmation failed", preferredStyle: .alert)
            alert_1.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert_1,animated: true,completion: nil)
        }
        
        else{
            
            let acsheet = UIAlertController(title: "Registeration Successful", message: "Move to next Page", preferredStyle: .actionSheet)
            acsheet.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default
                , handler: { (action) in
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewControllerid")as! SecondViewController
                    
                    
                    vc.nAme = self.nAmeoutlet.text
                    vc.pHone = self.pHoneoutlet.text
                    vc.eMail = self.eMailoutlet.text
                    vc.pAssword = self.pAsswordoutlet.text
                    vc.cpAssword = self.cpAsswordoutlet.text
                    
                    
                    self.navigationController?.pushViewController(vc, animated: true)
                    
            }))
            
            self.present(acsheet,animated: true,completion: nil)
            
            
            
        }
    }
    
}

