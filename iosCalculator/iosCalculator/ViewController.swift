//
//  ViewController.swift
//  iosCalculator
//
//  Created by user on 2020-01-24.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var oprScreen: UILabel!
    @IBOutlet weak var screen: UILabel!
    
    var flagNum = true
    var result:Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        oprScreen.text = ""
        screen.text = ""
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        if flagNum == true {
            screen.text = screen.text! + String(sender.tag - 1)
            flagNum = true
        }
        else {
            
        }
    }
    
    @IBAction func oprators(_ sender: UIButton) {
        
        switch (sender.tag) {
        case 12: // Divide
            print("Divide")
            oprScreen.text = " / "
        case 13: // Multiple
            print("Multiple")
            oprScreen.text = " * "
        case 14: // Minus
            print("Minus")
            oprScreen.text = " - "
        case 15: // Plus
            oprScreen.text = screen.text! + " + "
            result = Double(screen.text!)!
            screen.text = ""
        case 16: // Equal
            print("Equal")
            oprScreen.text = " = "
        default:
            print("default")
        }
        
    }
    
}

