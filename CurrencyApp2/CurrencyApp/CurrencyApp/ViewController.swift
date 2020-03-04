//
//  ViewController.swift
//  CurrencyApp
//
//  Created by MacStudent on 2020-03-03.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var caRupee: UIButton!
    @IBOutlet weak var cuEuro: UIButton!
    @IBOutlet weak var cuUSD: UIButton!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var usdAmount: UITextField!
    @IBOutlet weak var cadAmount: UITextField!
    func currency ()->Double {
        var rate = 0.0
        if caRupee.isSelected {
            rate = 0.018
        }else if cuEuro.isSelected {
            rate = 1.49
        }else if cuUSD.isSelected {
            rate = 1.34
        }
        return rate
    }
    @IBAction func convert(_ sender: Any) {
        if let cad = cadAmount.text, !cad.isEmpty{
            let cads: Double = Double(cad)!
            let usd = cads / currency()
            usdAmount.text = String(format: "%.2f", usd)
        message.text = ""
            
        }else if let usd = usdAmount.text, !usd.isEmpty{
            let usds: Double = Double(usd)!
                let cad = usds * currency()
            cadAmount.text = String(format: "%.2f", cad)
            message.text = ""
        }
        else {
            message.text = "PLease enter the required amount"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func usdAction(_ sender:UIButton ) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            cuEuro.isSelected = false
            caRupee.isSelected = false
            
        }
        
    }
    
    @IBAction func euroAction(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            caRupee.isSelected = false
            cuUSD.isSelected = false
            
        }
    }
    @IBAction func rupeeAction(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            cuUSD.isSelected = false
            cuEuro.isSelected = false
        }
    }
}

