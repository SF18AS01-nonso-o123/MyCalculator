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
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clearButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func operatorButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func equalsButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
    }
    
    
}

