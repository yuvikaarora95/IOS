//
//  ViewController.swift
//  test-1
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var bachelor: UIButton!
    @IBOutlet weak var diploma: UIButton!
    @IBOutlet weak var highschool: UIButton!
    @IBOutlet weak var single: UIButton!
    @IBOutlet weak var notsingle: UIButton!
    @IBOutlet weak var yes: UIButton!
    @IBOutlet weak var no: UIButton!
    
    @IBOutlet weak var java: UIButton!
    @IBOutlet weak var swift: UIButton!
    @IBOutlet weak var python: UIButton!
    @IBOutlet weak var javascript: UIButton!
    @IBOutlet weak var c: UIButton!
    @IBOutlet weak var php: UIButton!
    @IBOutlet weak var r: UIButton!
    
    @IBOutlet weak var kids: UITextField!
    @IBOutlet weak var experience: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
   
    @IBAction func rb1(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            bachelor.isSelected = true
            diploma.isSelected = false
            highschool.isSelected = false
        }
    }
    @IBAction func rb2(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            bachelor.isSelected = false
            diploma.isSelected = true
            highschool.isSelected = false
        }
    }
    @IBAction func rb3(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            bachelor.isSelected = false
            diploma.isSelected = false
            highschool.isSelected = true
        }
    }
    
    @IBAction func rb4(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            single.isSelected = true
            notsingle.isSelected = false
        }
    }
    @IBAction func rb5(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            single.isSelected = false
            notsingle.isSelected = true
        }
    }
    
    @IBAction func rb6(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            yes.isSelected = true
            no.isSelected = false
        }
    }
    @IBAction func rb7(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            yes.isSelected = false
            no.isSelected = true
        }
    }
    
    
    @IBAction func check1(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
         // cost = cost - 3000
        } else {
            sender.isSelected = true
          //  cost = cost + 3000
        }
    }
    @IBAction func check2(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
          // cost = cost - 5000
        } else {
            sender.isSelected = true
          //cost = cost + 5000
        }
    }
    @IBAction func check3(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
          // cost = cost - 5000
        } else {
            sender.isSelected = true
         // cost = cost + 5000
        }
    }
    @IBAction func check4(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
         // cost = cost - 3000
        } else {
            sender.isSelected = true
        //  cost = cost + 3000
        }
    }
    @IBAction func check5(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
          //cost = cost - 3000
        } else {
            sender.isSelected = true
          //cost = cost + 3000
        }
    }
    @IBAction func check6(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
          //cost = cost - 0
        } else {
            sender.isSelected = true
         // cost = cost + 0
        }
    }
    @IBAction func check7(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
         // cost = cost - 5000
        } else {
            sender.isSelected = true
        // cost = cost + 5000
        }
    }
    
    func language() -> Double {
        var rr = 0.0
        var rate = 0.0
        var rrr = 0.0
        if python.isSelected || swift.isSelected || r.isSelected {
                  rate = 3000
        }
        if java.isSelected || javascript.isSelected || c.isSelected {
            rr = 5000
        }
        if php.isSelected {
            rrr = 0
        }
        return rate + rr + rrr
    }
    func kidss() -> Double {
        var kds = 0.0
        if yes.isSelected{
            let kd = kids.text!
            let k : Double = (Double(kd)!)
                kds = 7000 * k
                      // final = total
        } else if no.isSelected {
            kids.text = ""
            kds = 0.0
        }
        return kds
    }
    
    func exp() -> Double {
        var e = 0.0
        let ex = experience.text!
        let exps : Double = Double(ex)!
        if exps > 3 {
            e = 10000
        }
        return e
    }
    func qualification() -> Double {
        var sal = 0.0
        if bachelor.isSelected{
            sal = 55000.0
        } else if diploma.isSelected{
            sal = 47000.0
        } else if highschool.isSelected {
            sal = 400000.0
        }
        return sal
    }
    
    @IBAction func calculate(_ sender: Any) {
     
        var total = 0.0
        total = qualification() + kidss() + language() + exp()
       
        result.text = String(format : "%.2f" ,total)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

