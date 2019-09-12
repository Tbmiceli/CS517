//
//  ViewController.swift
//  CS517 HW2
//
//  Created by Timothy Miceli on 9/10/19.
//  Copyright © 2019 Timothy Miceli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Label1: UITextField!
    @IBOutlet weak var scrambledText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(Label1.text!)
        
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func scrambleButton(_ sender: Any) {
        print("scramble button presses")
        
        var scrambledString = "";
        var stringLength = 0
        stringLength = Label1.text!.count
        
        //how to get a scrambled sequence from https://learnappmaking.com/random-numbers-swift/
        let sequence = 0 ..< stringLength
        let scrambledSequence = sequence.shuffled()
        for position in scrambledSequence {
            
            var index = Label1.text!.index(Label1.text!.startIndex, offsetBy: position)
            scrambledString += String(Label1.text![index])
        }
        scrambledText.text = scrambledString
    }
    
}

