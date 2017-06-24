//
//  ViewController.swift
//  First app — Shoe Buyer
//
//  Created by Robert Blundell on 12/05/2017.
//  Copyright © 2017 Robert Blundell. All rights reserved.
//

import UIKit

class choiceVC: UIViewController, UIScrollViewDelegate {
    
    
    @IBOutlet weak var shoescrollview: UIScrollView!
    @IBOutlet weak var buybutton: UIButton!
    @IBOutlet weak var pagenumber: UILabel!
    var chosenshoe = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.shoescrollview.delegate = self

        let numberofproducts = 5
        var scrollviewsize: CGFloat = 0.0
        
        for shoe in 1...numberofproducts{
            let shoeimage = UIImage(named: "shoes\(shoe).png")
            let shoeimageview = UIImageView(image: shoeimage)
            shoescrollview.addSubview(shoeimageview)
            shoeimageview.frame = CGRect(x: scrollviewsize + view.frame.size.width / 2 - 100, y: shoescrollview.frame.size.height / 2 - 100, width: 200, height: 200)
            scrollviewsize += view.frame.size.width
            }
    
        shoescrollview.contentSize = CGSize(width: scrollviewsize, height:  shoescrollview.frame.size.height)
    }
    
 
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let currentpagefloat = shoescrollview.contentOffset.x / shoescrollview.frame.size.width
        let currentpagefloatrounded = round(1 + currentpagefloat)
        let currentpageint = Int(currentpagefloatrounded)
        chosenshoe = currentpageint
        
        pagenumber.text = "\(currentpageint)/5"
        }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let _infoVC = segue.destination as! infoVC
        _infoVC.chosenshoe = String(chosenshoe)
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


