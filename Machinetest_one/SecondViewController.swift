//
//  SecondViewController.swift
//  Machinetest_one
//
//  Created by JIJO G OOMMEN on 03/06/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var sEccPasswordoutlet: UITextField!
    @IBOutlet weak var sEcpAsswordoutlet: UITextField!
    @IBOutlet weak var sEceMailoutlet: UITextField!
    @IBOutlet weak var sEcpHoneoutlet: UITextField!
    @IBOutlet weak var sEcnAmeoutlet: UITextField!
    
    var nAme : String?
    var pHone : String?
    var eMail : String?
    var pAssword : String?
    var cpAssword : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sEcnAmeoutlet.text = nAme
        sEcpHoneoutlet.text = pHone
        sEceMailoutlet.text = eMail
        sEcpAsswordoutlet.text = pAssword
        

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
