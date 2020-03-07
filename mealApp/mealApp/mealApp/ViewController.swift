
import UIKit

class ViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int)  -> String? {
           return pickerData[row]
       }
    
    // Capture the picker view selection
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var quantity: UITextField!
    @IBOutlet weak var mealImage: UIImageView!
    
    var prices : [Double] = [10.89, 5.69, 8.70, 9.00, 12.99]
    var pickerData : [String] = ["Burger", "Pizza", "Pasta", "Biryani", "Noodles"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Connect data:
        self.picker.delegate = self
        self.picker.dataSource = self
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
           price.text = String(prices[row])
           mealImage.image = UIImage(named : pickerData[row])
    }
    @IBAction func order(_ sender: Any) {
           
        /*   if let q = quantity.text, !q.isEmpty
           {
               let qt = (Double(q))!
               //amount.text = String(total)
               price.text = String("hello")
           }else {
           price.text = "Enter a quantity"
           }*/
       }
}

