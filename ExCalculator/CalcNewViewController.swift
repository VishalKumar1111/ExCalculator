import UIKit

class CalcNewViewController: UIViewController {
    
    var previousNumber = 0
    
    var Operator = ""
    
    @IBOutlet weak var lblResult: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        lblResult.text = ""
        
    }
    
    @IBAction func BtnClick(_ sender: UIButton) {
        lblResult.text = lblResult.text! + "1"
           
           }
    
    @IBAction func btnTwo(_ sender: Any) {
        lblResult.text = lblResult.text! + "2"
    }
    
    @IBAction func addBtn(_ sender: UIButton) {
        let a = Int(lblResult.text!)
        if Operator == "+"{
            let b = previousNumber + a!
            previousNumber = b
            lblResult.text = ""
        }else{
            previousNumber = a!
            Operator = "+"
            lblResult.text = ""
        }
        
    }
    
    
    @IBAction func BtnEqual(_ sender: UIButton) {
        
        let a = Int(lblResult.text!)
        if Operator == "+"{
            let b = previousNumber + a!
            lblResult.text = ""
            lblResult.text = "\(b)"
            
        }
        else if Operator == "-"{
            let b = previousNumber - a!
            lblResult.text = "\(b)"
        }
        
    }
    
    @IBAction func btnMinus(_ sender: Any) {
        let a:Int? = Int(lblResult.text!)
        previousNumber = a!
        Operator = "-"
        lblResult.text = ""
        
    }
    
    
}
