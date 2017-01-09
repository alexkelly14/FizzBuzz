//
//  ViewController.swift
//  Fizz Buzz
//
//  Created by Alexandra Kelly  on 9/28/16.
//  Copyright © 2016 Alexandra Kelly . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func fizzBuz (_ number:Int) -> (String, UIColor) {
        if number % 15 == 0 {
            return ("Fizz\nBuzz", UIColor.red)
        }
        else if number % 3 == 0 {
            return ("Fizz", UIColor.purple)
        }
        else if number % 5 == 0 {
            return ("Buzz", UIColor.green)
        }
        else {
        return (String(number), UIColor.black)
        }
        
    }
    @IBAction func onTappedViewController(_ sender: AnyObject) {
        number += 1
        let myTuple = fizzBuz(number)
        numberLabel.text = myTuple.0
        view.backgroundColor = myTuple.1
    }
    
    @IBAction func onLongPressViewController(_ sender: AnyObject) {
        number = 0
        numberLabel.text = ""
        view.backgroundColor = UIColor.black
    }
    
}

