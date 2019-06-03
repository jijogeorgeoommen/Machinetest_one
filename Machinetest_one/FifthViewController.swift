//
//  FifthViewController.swift
//  Machinetest_one
//
//  Created by JIJO G OOMMEN on 03/06/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    var lIst = ["Register page","Profile Page","Date Picker","Image Picker","Picker View"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
      return  lIst.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return lIst[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tExtviewoutlet.text = "\(lIst[row])"
    }
    

    @IBOutlet weak var tExtviewoutlet: UITextField!
    @IBOutlet weak var pIckerviewoutlet: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        pIckerviewoutlet.delegate = self
        self.tExtviewoutlet.inputView = pIckerviewoutlet
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
