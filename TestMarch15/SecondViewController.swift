//
//  SecondViewController.swift
//  TestMarch15
//
//  Created by Consultant on 3/15/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var fibResultLabel: UILabel!
    @IBOutlet weak var fibEntryTextField: UITextField!
    
    var userInput: String {
           return (fibEntryTextField.text)!
       }
       var fibNum: Int {
          return  Int(userInput)!
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
  
    @IBAction func calcFibResult(_ sender: Any) {
        // calculate fib X number of places
        guard fibNum > 0 else { return }
         var fibonacci = [0,1]

        for i in 2...fibNum {
            fibonacci.append(i)
            fibonacci[i] = fibonacci[i - 1] + fibonacci[i - 2]
         }
        fibResultLabel.text = "\(fibonacci)"
    }
    
}
