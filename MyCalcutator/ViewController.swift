//
//  ViewController.swift
//  MyCalcutator
//
//  Created by Chinonso Obidike on 2/15/19.
//  Copyright © 2019 Chinonso Obidike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tag = 1
    @IBOutlet weak var displayLabel: UILabel! //UILabel
    

    var lastOperator: String = ""
    var numberDisplayed: Double = 0.0
    var result: Double = 0.0
    var newNum: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = "0"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK:- CLEAR BUTTON PRESSED

    @IBAction func clearButtonPressed(_ sender: UIButton) {  //clear text area and variables
        displayLabel.text = "0"
        result = 0.0
        newNum = ""
        tag = 1
    }
    
    //MARK:- OPERATOR BUTTON PRESSED
    @IBAction func operatorButtonPressed(_ sender: UIButton) {
        guard let previousText: String = displayLabel.text else {  //check for previous text on labal
            return
        }
        guard let symbolString: String = sender.title(for: .normal) else{ //get the operator symbol pressed
            return
        }
        displayLabel.text = previousText + symbolString //append text on label
        
        guard let newNumber = Double(newNum)else{  //convert the newst string of numbers entered to double
            return
        }
        
        numberDisplayed = newNumber
 
        if tag == 1 {                     //tag counts the number of operators on the screen
            result = numberDisplayed         //use newest number entered as the new result
        }else{
        result = mathOperation(operatorSymbol: lastOperator)  //use previous total as the result
        }
        lastOperator = symbolString   //store last operator pressed
        tag += 1
        newNum = ""
    }
    
    //MARK:- EQUAL BUTTON PRESSED
    
    @IBAction func equalsButtonPressed(_ sender: UIButton) {
        result = mathOperation(operatorSymbol: lastOperator) //use previous result
        tag = 1
        displayLabel.text = String(result)
        newNum = String(result)          //save the last number on the screen to be converted to a double later
       
    }
    
    
    //MARK:- NUMBER BUTTON PRESSED
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        guard let text: String = displayLabel.text else {
            return
        }
        
        guard let numString: String = sender.title(for: .normal) else{
            return
        }
        if text != "0"{
            displayLabel.text = text + numString    //append previous text on label to new text
        } else{
            displayLabel.text = numString
        }
        newNum += numString
    }
    
    
    func mathOperation(operatorSymbol: String) -> Double{
        guard let total = Double(newNum)else{
            return 0
        }
        switch operatorSymbol {  //use the right math operator to perform operation
            case "+":
            result += total
            case "−":
            result -= total
            case "÷":
            result /= total
            case "×":
            result *= total
            case "%":
                result = result.truncatingRemainder(dividingBy: total)
            default:
            print("nothing")
        }
        return result
    }
    
}

