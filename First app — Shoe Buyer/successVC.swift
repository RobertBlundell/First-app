//
//  successVC.swift
//  First app — Shoe Buyer
//
//  Created by Robert Blundell on 13/05/2017.
//  Copyright © 2017 Robert Blundell. All rights reserved.
//

import UIKit

class successVC: UIViewController {

    
    
    @IBOutlet weak var backbutton: UIButton!
    @IBAction func backbuttonpressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
