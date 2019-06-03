//
//  FourthViewController.swift
//  Machinetest_one
//
//  Created by JIJO G OOMMEN on 03/06/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    let img = UIImagePickerController()
    

    @IBOutlet weak var iMageoutlet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        img.delegate = self

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
    @IBAction func sElectaCtion(_ sender: Any) {
        
        img.sourceType = .photoLibrary
        img.allowsEditing = false
        present(img,animated: true,completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = info[UIImagePickerController.InfoKey.originalImage]as! UIImage
        iMageoutlet.image = image
        dismiss(animated: true, completion: nil)
        
    }
    
}
