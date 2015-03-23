//
//  ViewController.swift
//  FibonacciApp
//
//  Created by David Molloy on 23/03/2015.
//  Copyright (c) 2015 riis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)
    
    @IBOutlet var textview: UITextView!
    @IBOutlet var includesZeroSwitch: UISwitch!
    @IBOutlet var includesZeroLabel: UILabel!
    @IBOutlet var numberOfItemsLabel: UILabel!
    @IBOutlet var numberOfItemsSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.updateFibonacciSequence()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updateFibonacciSequence(){
        
        if includesZeroSwitch.on{
            includesZeroLabel.text = "YES"
            numberOfItemsSlider.maximumValue = 94
        }else{
            includesZeroLabel.text = "NO"
            numberOfItemsSlider.maximumValue = 93
        }
        
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: UInt64( numberOfItemsSlider.value), includesZero: includesZeroSwitch.on)
        
        numberOfItemsLabel.text = String(Int(fibonacciSequence.values.count))
        textview.text = fibonacciSequence.values.description
        
        
    }
}

