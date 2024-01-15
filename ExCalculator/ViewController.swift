//
//  ViewController.swift
//  ExCalculator
//
//  Created by RLogixxTraining on 21/08/23.
//

import UIKit

class ViewController: UIViewController{
    
    var screen :Double = 0
    var previousNumber : Double = 0
    var operation : Int = 0
    var performingMath = 0
    var vlaueadd : Any = 0
    @IBOutlet weak var txtvShow: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
     
        
    }


    @IBAction func BtnCal(_ sender: UIButton) {
        let tag = sender.tag
        if performingMath == 1{
            txtvShow.text = String(tag)
            screen = Double(txtvShow.text!)!
            performingMath = 0
        }
        else{
            txtvShow.text = txtvShow.text! + String(tag)
            screen = Double(txtvShow.text!)!
            
        }
        
    }
    
    @IBAction func Calculate(_ sender: UIButton) {
        let tag = sender.tag
        
        if txtvShow.text != "" && tag != 10 && tag != 15
            {
            previousNumber = Double(txtvShow.text!)!
            if tag == 11{
                txtvShow.text = "+"
            }
            else if tag == 12{
            txtvShow.text = "-"
            }
            else if tag == 13{
                txtvShow.text = "*"
            }
            else if tag == 14{
                txtvShow.text = "/"
            }
            
            operation = tag
            performingMath = 1
            
        }
        
        else if tag == 15
        {
            if operation == 11{
                txtvShow.text! += String(previousNumber + screen)
            
            }
            else if operation == 12{
                
                txtvShow.text = txtvShow.text! + String(previousNumber - screen)
            }
            else if operation == 13{
                txtvShow.text = String(previousNumber * screen)
            }
            else if operation == 14{
                txtvShow.text = String(previousNumber / screen)
            }
           
            
            
        }
        
        
        
        
        
    }
    
    @IBAction func reset(_ sender: Any) {
        txtvShow.text = ""
        previousNumber = 0;
        screen = 0;
        operation = 0;
    }
    
    
}

