//
//  ThirdViewController.swift
//  Machinetest_one
//
//  Created by JIJO G OOMMEN on 03/06/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    private var dAtepicker : UIDatePicker?

    @IBOutlet weak var dAtepickeroutlet: UIDatePicker!
    @IBOutlet weak var lAbeloutlet: UILabel!
    @IBOutlet weak var tExtoutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        dAtepicker = UIDatePicker()
        dAtepicker?.datePickerMode = .date
        dAtepicker?.addTarget(self, action: #selector(selectdate(dAtepicker:)), for: .valueChanged)
        
        tExtoutlet.inputView = dAtepicker
    }
    
    @objc func selectdate (dAtepicker : UIDatePicker){
        
        let dateformat = DateFormatter()
        dateformat.dateFormat = "MM/dd/yyy"
        tExtoutlet.text = dateformat.string(from: dAtepicker.date)
        view.endEditing(true)
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
