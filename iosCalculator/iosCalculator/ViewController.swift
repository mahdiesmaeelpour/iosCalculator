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
    var flagOpr = true
    var result:Double = 0
    var opr:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        oprScreen.text = ""
        screen.text = ""
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        screen.text = screen.text! + String(sender.tag - 1)
        flagNum = true
    }
    
    @IBAction func oprators(_ sender: UIButton) {
        switch (sender.tag) {
            case 12: // Divide
                oprSelector(o: "/")
            case 13: // Multiple
                oprSelector(o: "*")
            case 14: // Minus
                oprSelector(o: "-")
            case 15: // Plus
                oprSelector(o: "+")
            case 16: // Equal
                excuteOpr(o : opr)
            default:
                print("ERR: opratores function's switch")
        }
    }
    
    func oprSelector (o : String) {
        oprScreen.text = screen.text! + " " + o + " "
        result = Double(screen.text!)!
        screen.text = ""
        flagOpr = false
        opr = o
    }
    func excuteOpr (o : String) {
        if flagOpr == false {
            if screen.text != "" {
                switch (o) {
                case "+":
                    result += Double(screen.text!)!
                case "-":
                    result -= Double(screen.text!)!
                case "*":
                    result *= Double(screen.text!)!
                case "/":
                    result /= Double(screen.text!)!
                default:
                    print("ERR: opratores function's switch")
                }
                oprScreen.text = oprScreen.text! + screen.text! + " = "
                screen.text = String(result)
                flagOpr = true
            }
        }
    }
    
    @IBAction func theme(_ sender: UIButton) {
        
    }
    
}

