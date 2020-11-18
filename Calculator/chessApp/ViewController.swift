//
//  ViewController.swift
//  ChessApp
//
//  Created by user165323 on 11/15/20.
//  Copyright © 2020 navneetKang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var numberLabel: UILabel!
    var numberOnScreen:Double? = 0.0
    var mathsOperation:String?
    var flag:Bool=false
    var firstNumber:Double?
    var secondNumber:String?=""
    var resultFlag:Bool = false
    
    var previousNumber :Double? ;
    @IBAction func digitEntry(_ sender: UIButton)
    {
        if(flag && !resultFlag)
        {
            firstNumber = previousNumber
            secondNumber! = secondNumber! + String(sender.tag - 1)
            numberLabel.text! = String(firstNumber!) + mathsOperation! + secondNumber!

        }
            else if(resultFlag)
        {
           
            secondNumber!=secondNumber! + String(sender.tag - 1)
            numberLabel.text!=String(firstNumber!) + mathsOperation! + secondNumber!
        }
        else
        {
             numberLabel.text! = numberLabel.text! + String(sender.tag - 1)
             numberOnScreen=Double(numberLabel.text!)
        }
        
       
       
        
    }
    
    @IBAction func showResult(_ sender: UIButton) {
        
        
        switch sender.tag
        {
            case 15:
                print("Maths Operation \(mathsOperation)")
                showResult()
                updateFirstSecond()
                 mathsOperation=""
            
            case 16:
                clear()
                
            default:
                print("Hello")
        }

        
    }
    @IBAction func operationEntry(_ sender: UIButton) {
        previousNumber = numberOnScreen ;
        
        switch sender.tag
        {
        case 11:
            mathsOperation = "/"
            if(resultFlag)
            {
                updateFirstSecond()
                numberLabel.text! = String(firstNumber!) + mathsOperation!
            }
            else
            {
                numberLabel.text! = numberLabel.text!+mathsOperation!
            }
            
            
            flag=true
       
        case 12:
            mathsOperation = "*"
            
            if(resultFlag)
            {
                updateFirstSecond()
               numberLabel.text! = String(firstNumber!) + mathsOperation!
            }
            else
            {
                updateFirstSecond()
                numberLabel.text! = numberLabel.text!+mathsOperation!
                
            }
            

            flag=true

        case 13:
            mathsOperation = "-"
           if(resultFlag)
            {
                updateFirstSecond()
               numberLabel.text! = String(firstNumber!) + mathsOperation!
            }
            else
            {
                numberLabel.text! = numberLabel.text!+mathsOperation!
                
            }

            flag=true
            
         case 14:
            mathsOperation = "+"
            if(resultFlag)
            {
                updateFirstSecond()
               numberLabel.text! = String(firstNumber!) + mathsOperation!
            }
            else
            {
                numberLabel.text! = numberLabel.text!+mathsOperation!
                
            }
            flag=true
            
        default:
            print("Maths Operation Done")
        
        }
        
    }
    
    func showResult()
    {
        print("Show Result Entry")
        switch mathsOperation
        {
            case "/":
                    numberLabel.text! = String( firstNumber! / Double(secondNumber!)!)
              
            resultFlag = true
            
            case "*":
                 numberLabel.text! = String( firstNumber! * Double(secondNumber!)!)
            resultFlag = true
                 
            case "-":
                numberLabel.text! = String( firstNumber! - Double(secondNumber!)!)
                resultFlag = true
               
            case "+":
                
                numberLabel.text! = String( firstNumber! + Double(secondNumber!)!)
            resultFlag = true
                
            
        default:
            print("Default Operation")
            
        }
    }
    
    func updateFirstSecond()
    {
        firstNumber=Double(numberLabel.text!)
        resultFlag = true
        secondNumber=""
    }
    
    func clear()
    {
        numberLabel.text!=""
        mathsOperation=""
        previousNumber=0.0
        numberOnScreen=0.0
        secondNumber!=""
        numberLabel.text!=""
        firstNumber=0.0
        flag=false
        resultFlag=false
        mathsOperation=""
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

