/*

 carapp

 menu shows car names

 once the user choose car its show the daily rate and its picture

 let user choose how many days

 user choose one option for driver age

 <18     18-64      65+

 if<18 add $5 per day, if 65 + increase the total by 10%

 pick one,some or all  option : navigator, child seat, unlimited millage

 add $7 per day for nav. $6 for cs. 1.5 for unmillage

 finally add 13% for total and show it.

 */
import UIKit



class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {

        return 1

    }

    

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {

        return cars.count

    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int)  -> String? {

           return cars[row]

       }



    @IBOutlet weak var picker: UIPickerView!

    @IBOutlet weak var carImage: UIImageView!

    

        

    @IBOutlet weak var price: UILabel!

    @IBOutlet weak var rb1: UIButton!

    @IBOutlet weak var rb2: UIButton!

    @IBOutlet weak var rb3: UIButton!

    

    @IBOutlet weak var navigator: UIButton!

    @IBOutlet weak var child: UIButton!

    @IBOutlet weak var unlimited: UIButton!

    

    @IBOutlet weak var final: UILabel!

    @IBOutlet weak var quantity: UITextField!

    var rate = 0.0

    var rate2 = 0.0

    @IBAction func radio1(_ sender: UIButton) {

        if sender.isSelected{

            sender.isSelected = false

        } else {

            sender.isSelected = true

            rb2.isSelected = false

            rb3.isSelected = false

        }

    }

    

    @IBAction func radio2(_ sender: UIButton) {

        if sender.isSelected{

                   sender.isSelected = false

               } else {

                   rb1.isSelected = false

                   sender.isSelected = true

                   rb3.isSelected = false

               }

    }

    

    @IBAction func radio3(_ sender: UIButton) {

        if sender.isSelected{

                   sender.isSelected = false

               } else {

                   rb1.isSelected = false

                   rb2.isSelected = false

                   sender.isSelected = true

               }

    }

    

    //--------------------------------//

    

    

    @IBAction func check1(_ sender: UIButton) {

        if sender.isSelected {

            sender.isSelected = false

         

        } else {

            sender.isSelected = true

           

        }

    }

    

    @IBAction func check2(_ sender: UIButton) {

        if sender.isSelected {

            sender.isSelected = false

        } else {

            sender.isSelected = true

        }

    }

    

    

    @IBAction func check3(_ sender: UIButton) {

        if sender.isSelected {

            sender.isSelected = false

        } else {

            sender.isSelected = true

        }

    }

    

    var cars : [String] = ["BMW", "Toyota", "Nissan", "Mercedes"]

    var prices : [Double] = [200, 300, 150, 250]

    //var dailyrate = 120

   

    override func viewDidLoad() {

        

        super.viewDidLoad()

       

        //connect data:

        self.picker.delegate = self

        self.picker.dataSource = self

    }

    override func touchesBegan(_ touches : Set<UITouch>, with event : UIEvent?) {

        view.endEditing(true)

    }

  

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component : Int)

    {

        

        price.text = String(prices[row])

        carImage.image = UIImage(named : cars[row])

    }

    

    @IBAction func calculate(_ sender: Any) {

        

      var amt: Double = 0

      let n1 = Double(quantity.text!)!

      let n2 = Double(price.text!)!

      if rb1.isSelected{

          if navigator.isSelected{

              amt = amt + 7

          }

          if child.isSelected{

              amt = amt + 6

          }

          if unlimited.isSelected{

              amt = amt * 1.5

      }

          let result = (((5.0 * n1) + amt + (n1 * n2)) * 0.13) + (5.0 + amt + (n1 * n2))

          final.text = String(format: "%.2f",result)

      }

      if rb2.isSelected{

          if navigator.isSelected{

                  amt = amt + 7

              }

              if child.isSelected{

                  amt = amt + 6

              }

              if unlimited.isSelected{

                  amt = amt * 1.5

          }

          let result = ((amt + (n1 * n2) ) * 0.13) + (amt + (n1 * n2) )

          final.text = String(format: "%.2f",result)

      }

      if rb3.isSelected{

          if navigator.isSelected{

                             amt = amt + 7

                         }

                         if child.isSelected{

                             amt = amt + 6

                         }

                         if unlimited.isSelected{

                             amt = amt * 1.5

                     }

          let result = (((amt + (n1 * n2)) * 1.10) + ((amt + (n1 * n2))) * 0.13) + (amt + (n1 * n2))

          final.text =  String(format: "%.2f",result)

      }

        

     

    }

    



}

