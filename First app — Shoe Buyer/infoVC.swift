//
//  infoVC.swift
//  First app — Shoe Buyer
//
//  Created by Robert Blundell on 13/05/2017.
//  Copyright © 2017 Robert Blundell. All rights reserved.
//

import UIKit

class infoVC: UIViewController {
    
    
    
    
    @IBAction func backbuttonpressed(_sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var confirmbutton: UIButton!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var textfield2: UITextField!
    @IBOutlet weak var textfield3: UITextField!
    @IBOutlet weak var chosenshoeimage: UIImageView!
    
    var chosenshoe: String = "error"
    
    @IBAction func confirmbuttonpressed(_ sender: Any) {
        if textfield.text!.isEmpty || textfield2.text!.isEmpty || textfield3.text!.isEmpty  {
            performSegue(withIdentifier: "failurepopup", sender: self)}
        else {performSegue(withIdentifier: "successpopup", sender: self)}
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chosenshoeimage.image = UIImage(named: "shoes\(chosenshoe)")
       // Pagenumberlabel.text = chosenshoe
    }

   
    
}

