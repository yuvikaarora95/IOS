//
//  ViewController.swift
//  calculator
//
//  Created by Yuvika Arora on 2020-05-19.
//  Copyright © 2020 Yuvika Arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0;
    var previousNumber:Double = 0;
    var performingMaths = false
    var operations = 0;
    
    @IBAction func buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16 {
            previousNumber = Double(label.text!)!
            if sender.tag == 12 {   //Divide
                label.text = "/"
            }
            else if sender.tag == 13 {   //Multiply
                label.text = "x"
            }
            else if sender.tag == 14 {  //Subtract
                label.text = "-"
            }
            else if sender.tag == 15 {  //Add
                label.text = "+"
            }
            operations = sender.tag
            performingMaths = true
        }
        else if sender.tag == 16 {
            if operations == 12 {
                label.text = String(previousNumber / numberOnScreen)
            }
            else if operations == 13 {
                label.text = String(previousNumber * numberOnScreen)
            }
            else if operations == 14 {
                label.text = String(previousNumber - numberOnScreen)
            }
            else if operations == 15 {
                label.text = String(previousNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11 {
            label.text = ""
            previousNumber = 0;
            numberOnScreen = 0;
            operations = 0;
        }
    }
    
    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMaths == true {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performingMaths = false
        }
        else {
            label.text = label.text! + String(sender.tag - 1)
            numberOnScreen = Double(label.text!)!
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

