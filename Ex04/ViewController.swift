//
//  ViewController.swift
//  Ex04
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var labelText : String = " "
    @IBOutlet var memo: UITextView!
    
    func putLabel (_ sender: UITextView!){
            if sender != nil {
                sender.text?.append(labelText)
            }else {
                sender.text?.append("error")
            }
    }
    
    @IBAction func clear() {
        memo.text = " "
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        putLabel(memo)
    }


}

