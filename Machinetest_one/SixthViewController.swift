//
//  SixthViewController.swift
//  Machinetest_one
//
//  Created by JIJO G OOMMEN on 03/06/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {

    @IBOutlet weak var wEbviewoutlet: UIWebView!
    
    @IBOutlet weak var aCtivityindicatoroutlet: UIActivityIndicatorView!
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aCtivityindicatoroutlet.startAnimating()
        
        timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(stopindicator), userInfo: nil, repeats: false)
        
        aCtivityindicatoroutlet.hidesWhenStopped = true
        
        wEb()

        // Do any additional setup after loading the view.
    }
    
    
    func wEb(){
        let url = URL(string: "https://www.google.com")
        wEbviewoutlet.loadRequest(URLRequest(url: url!))
    }
    
    @objc func stopindicator(){
        aCtivityindicatoroutlet.stopAnimating()
    
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
