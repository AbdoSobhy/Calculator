//
//  MainVC.swift
//  Advanved Calculator
//
//  Created by Abdelrahman Sobhy on 4/9/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    var brain = BrainCalculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{ return .lightContent }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        if resultLabel.text == "0"{
            resultLabel.text = ""
        }
        if sender.tag == -1 {
            if !resultLabel.text!.contains("."){
                resultLabel.text! += "."
            }
        } else {
            resultLabel.text! += String(sender.tag)
            
        }
    }
    
    
    @IBAction func oprationAction(_ sender: UIButton) {
        
        brain.add(number: Double(resultLabel.text!)!, with: Character(sender.titleLabel!.text!))
        if sender.titleLabel?.text == "="{
            resultLabel.text = brain.calcResult()
            brain.restart()
        }
        else{
            resultLabel.text = "0"
            
        }
    }
    @IBAction func actionAC(_ sender: UIButton) {
        resultLabel.text = "0"
        brain.restart()
    }
    
    @IBAction func plusMinusOprator(_ sender: Any) {
        if Int(resultLabel.text!) != 0 && Double(resultLabel.text!) != 0.0 {
            resultLabel.text = String(Double(resultLabel.text!)! * -1)
        }
    }
    
    @IBAction func presentageOprator(_ sender: Any) {
        if Int(resultLabel.text!) != 0 && Double(resultLabel.text!) != 0.0 {
            resultLabel.text = String(Double(resultLabel.text!)! / 100)
        }
    }
    
    
    
}
