//
//  ViewController.swift
//  TurkcellOdevCalculator


import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNumberText: UITextField!
    
    @IBOutlet weak var secondNumberText: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func sumButton(_ sender: UIButton) {
        calculate(operation: "sum")
    }
    
    
    @IBAction func substractButton(_ sender: UIButton) {
        calculate(operation: "substract")
    }
    
    
    @IBAction func productButton(_ sender: UIButton) {
        calculate(operation: "product")
    }
    
    @IBAction func devideButton(_ sender: UIButton) {
        calculate(operation: "divide")
    }
    
    func calculate(operation: String){
        if let firstNumber = Int(firstNumberText.text!), let secondNumber = Int(secondNumberText.text!){
            switch operation {
            case "sum":
                result = firstNumber + secondNumber
                resultLabel.text = "Result is: \(result)"
            case "substract":
                result = firstNumber - secondNumber
                resultLabel.text = "Result is: \(result)"
            case "product":
                result = firstNumber * secondNumber
                resultLabel.text = "Result is: \(result)"
            case "divide":
                if secondNumber != 0 {
                    result = firstNumber / secondNumber
                    resultLabel.text = "Result is: \(result)"
                } else {
                    resultLabel.text = "You can not divide a number by 0"
                }
            default:
                print("You entered wrong operation!")
            }
        }else {
            resultLabel.text = "Please enter a valid input"
        }
        
        
    }
    
}

