//
//  ViewController.swift
//  MyCalcutator
//
//  Created by Chinonso Obidike on 2/15/19.
//  Copyright © 2019 Chinonso Obidike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    var numberDisplayed: Double = 0.0
    var expression: String = ""
    var result: Double = 0.0
    var operators: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = "0"
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clearButtonPressed(_ sender: UIButton) {
        displayLabel.text = "0"
    }
    
    @IBAction func operatorButtonPressed(_ sender: UIButton) {
        guard let text: String = displayLabel.text else {
            return
        }
        guard let symbString: String = sender.title(for: .normal) else{
            return
        }
        displayLabel.text = text + symbString
        
        guard let newText: String = displayLabel.text else{
            return
        }
        expression = newText
    }
    
    @IBAction func equalsButtonPressed(_ sender: UIButton) {
    }
    
    
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
        
        if let text = displayLabel.text{
            expression = text
        }
    }
    
    
}

