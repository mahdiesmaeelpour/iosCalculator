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
        
        switch value {
        case <#pattern#>:
            <#code#>
        default:
            <#code#>
        }
        
    }
    
}

