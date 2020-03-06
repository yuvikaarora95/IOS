// app to order a pizza with choosing size and 2 free toppings and charge for more toppings

import UIKit

class ViewController: UIViewController {
    var tops = 0.0
    
    @IBOutlet weak var small2: UIButton!
    @IBOutlet weak var medium: UIButton!
    @IBOutlet weak var large: UIButton!
    
    @IBOutlet weak var quantity: UITextField!
    @IBOutlet weak var msg: UILabel!
    @IBOutlet weak var amount: UITextField!
    
    @IBOutlet weak var pepp: UIButton!
    @IBOutlet weak var mushrooms: UIButton!
    @IBOutlet weak var onions: UIButton!
    @IBOutlet weak var sausage: UIButton!
    @IBOutlet weak var bacon: UIButton!
    @IBOutlet weak var cheese: UIButton!
    @IBOutlet weak var olives: UIButton!
    @IBOutlet weak var peppers: UIButton!
    
    @IBAction func order(_ sender: Any) {
         var rate = 0.0
         if small2.isSelected {
             rate = 8.99
         }else if medium.isSelected {
             rate = 12.99
         }else if large.isSelected {
             rate = 14.99
         }
         
         if let q = quantity.text, !q.isEmpty
         {
             let qt : Double = (Double(q))!
             let price = rate + 2 * (Double(tops) - 2)
             let total = price * (Double(qt) * 1.13)
         amount.text = String(total)
         msg.text = "Thank you for the order"
         } else {
         msg.text = "Enter a quantity"
         }
     }
    
    @IBAction func smallp(_ sender: UIButton) {
           if sender.isSelected{
                      sender.isSelected = false
                  } else {
                      sender.isSelected = true
                      medium.isSelected = false
                      large.isSelected = false
       }
    }
    @IBAction func rb2(_ sender: UIButton) {
        if sender.isSelected {
                   sender.isSelected = false
               } else {
                   small2.isSelected = false
                   sender.isSelected = true
                   large.isSelected = false
                   
               }
    }
    @IBAction func rb3(_ sender: UIButton) {
        if sender.isSelected {
                   sender.isSelected = false
               } else {
                   small2.isSelected = false
                   medium.isSelected = false
                   sender.isSelected = true
                   
               }
    }
    
    //--------------------------------------------//
    @IBAction func check1(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            tops = tops - 1
        } else {
            sender.isSelected = true
            tops = tops + 1
        }
    }
    
    
    @IBAction func check2(_ sender: UIButton) {
        if sender.isSelected {
                   sender.isSelected = false
            tops = tops - 1
               } else {
                   sender.isSelected = true
            tops = tops + 1
               }
    }
    
    
    @IBAction func check3(_ sender: UIButton) {
        if sender.isSelected {
                   sender.isSelected = false
            tops = tops - 1
               } else {
                   sender.isSelected = true
            tops = tops + 1
               }
    }
    
    
    @IBAction func check4(_ sender: UIButton) {
        if sender.isSelected {
                   sender.isSelected = false
            tops = tops - 1
               } else {
                   sender.isSelected = true
            tops = tops + 1
               }
    }
    
    
    @IBAction func check5(_ sender: UIButton) {
        if sender.isSelected {
                   sender.isSelected = false
            tops = tops - 1
               } else {
                   sender.isSelected = true
            tops = tops + 1
               }
    }
    
    
    @IBAction func check6(_ sender: UIButton) {
        if sender.isSelected {
                   sender.isSelected = false
            tops = tops - 1
               } else {
                   sender.isSelected = true
            tops = tops + 1
               }
    }
    
    
    @IBAction func check7(_ sender: UIButton) {
        if sender.isSelected {
                   sender.isSelected = false
            tops = tops - 1
               } else {
                   sender.isSelected = true
            tops = tops + 1
               }
    }
    
    
    @IBAction func check8(_ sender: UIButton) {
        if sender.isSelected {
                   sender.isSelected = false
            tops = tops - 1
               } else {
                   sender.isSelected = true
            tops = tops + 1
               }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    
}


