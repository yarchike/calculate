//
//  ViewController.swift
//  Calculate
//
//  Created by Yarchik on 21.12.2021.
//

import UIKit

class ViewController: UIViewController {
    var numberFromeScreen: Double = 0
    var firstNum:Double = 0
    var mathSign:Bool = false
    var operation: Int = 0

    @IBOutlet weak var result: UILabel!
    
    @IBAction func digts(_ sender: UIButton) {
        if mathSign  == true {
            result.text = String(sender.tag)
            mathSign = false
        }else{
            result.text = result.text! +   String(sender.tag)
           
        }
        numberFromeScreen = Double(result.text!)!
  
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if (result.text != "") && sender.tag != 10 && sender.tag != 15 && mathSign != true{
            firstNum = Double(result.text!)!
            if sender.tag == 11{
                result.text = "/"
            } else
            if sender.tag == 12{
                result.text = "X"
            } else
            if sender.tag == 13{
        
                result.text = "-"
            } else
            if sender.tag == 14{
                result.text = "+"
            }
            operation = sender.tag
            mathSign = true
        }else  if sender.tag == 15 {
            if operation == 11 {
                result.text = String(firstNum/numberFromeScreen)
            } else
            if operation == 12{
                result.text = String(firstNum*numberFromeScreen)
            } else
            if operation == 13{
                result.text = String(firstNum-numberFromeScreen)
            } else
            if operation == 14{
                result.text = String(firstNum+numberFromeScreen)
            }
        }else if sender.tag == 10 {
            result.text = ""
            firstNum = 0
            numberFromeScreen = 0
            operation = 0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

