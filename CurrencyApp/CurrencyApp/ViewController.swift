//
//  ViewController.swift
//  CurrencyApp
//
//  Created by MacStudent on 2020-03-03.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var usdAmount: UITextField!
    @IBOutlet weak var cadAmount: UITextField!
    @IBAction func convert(_ sender: Any) {
        if let cad = cadAmount.text, !cad.isEmpty{
            let cads: Double = Double(cad)!
            let usd = cads * 1.34
        usdAmount.text = String(usd)
        message.text = ""
            
        }else if let usd = usdAmount.text, !usd.isEmpty{
            let usds: Double = Double(usd)!
                let cad = usds / 1.34
            cadAmount.text = String(cad)
            message.text = ""
        }
        else {
            message.text = "PLease enter the cad amount"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

