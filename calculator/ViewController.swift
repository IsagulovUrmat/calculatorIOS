//
//  ViewController.swift
//  calculator
//
//  Created by Isagulov urmat on 11/6/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var b1: UIButton!
    
    @IBOutlet weak var inputtextfield: UILabel!
    
    var firstnumber:String = ""
    var operation:String = ""
    var secondnumber:String = ""
    var result:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func b1action(_ sender: UIButton) {
        
        switch sender.tag{
        case 0:
            if operation.isEmpty{
                firstnumber += "0"
                inputtextfield.text = firstnumber
            }else{
                secondnumber += "0"
                inputtextfield.text = secondnumber
            }
            
        case 1:
            if operation.isEmpty{
                firstnumber += "1"
                inputtextfield.text = firstnumber
            }else{
                secondnumber += "1"
                inputtextfield.text = secondnumber
            }
        case 2:
            if operation.isEmpty{
                firstnumber += "2"
                inputtextfield.text = firstnumber
            }else{
                secondnumber += "2"
                inputtextfield.text = secondnumber
            }
        case 3:
            if operation.isEmpty{
                firstnumber += "3"
                inputtextfield.text = firstnumber
            }else{
                secondnumber += "3"
                inputtextfield.text = secondnumber
            }
        case 4:
            if operation.isEmpty{
                firstnumber += "4"
                inputtextfield.text = firstnumber
            }else{
                secondnumber += "4"
                inputtextfield.text = secondnumber
            }
        case 5:
            if operation.isEmpty{
                firstnumber += "5"
                inputtextfield.text = firstnumber
            }else{
                secondnumber += "5"
                inputtextfield.text = secondnumber
            }
        case 6:
            if operation.isEmpty{
                firstnumber += "6"
                inputtextfield.text = firstnumber
            }else{
                secondnumber += "6"
                inputtextfield.text = secondnumber
            }
        case 7:
            if operation.isEmpty{
                firstnumber += "7"
                inputtextfield.text = firstnumber
            }else{
                secondnumber += "7"
                inputtextfield.text = secondnumber
            }
        case 8:
            if operation.isEmpty{
                firstnumber += "8"
                inputtextfield.text = firstnumber
            }else{
                secondnumber += "8"
                inputtextfield.text = secondnumber
            }
        case 9:
            if operation.isEmpty{
                firstnumber += "9"
                inputtextfield.text = firstnumber
            }else{
                secondnumber += "9"
                inputtextfield.text = secondnumber
            }
        default:
            print("there is no such number")
        }
    }
    
    @IBAction func operation(_ sender: UIButton) {
        
        switch sender.tag{
        case 10:
            operation = "/"
        case 11:
            operation = "x"
        case 12:
            operation = "-"
        case 13:
            operation = "+"
        default:
            print("no operation")
        }
    }
    
    @IBAction func findtheresult(_ sender: UIButton) {
        
        guard let first = Int(firstnumber), let second = Int(secondnumber) else{return}
        
        switch operation{
        case "+":
            result = first + second
        case "x":
            result = first * second
        case "/":
            result = first / second
        case "-":
            result = first - second
        default:
            print("bye")
        }
        
        inputtextfield.text = "\(result)"
        
        reset()
    }
    
    @IBAction func reset(){
        firstnumber = ""
        secondnumber = ""
        result = 0
        operation = ""
    }
    
    
    @IBAction func resetC(){
        firstnumber = ""
        secondnumber = ""
        result = 0
        inputtextfield.text = "0"
        operation = ""
    }
}

