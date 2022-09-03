//
//  ViewController.swift
//  Mod2_Creative_App_Roy_Alameh
//
//  Created by ROY ALAMEH on 9/1/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var numOneTextField: UITextField!
    @IBOutlet weak var numTwoTextField: UITextField!
    @IBOutlet weak var solutionOutlet: UILabel!
    @IBOutlet weak var addOutlet: UIButton!
    @IBOutlet weak var subtractOutlet: UIButton!
    @IBOutlet weak var multiplyOutlet: UIButton!
    @IBOutlet weak var divideOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numOneTextField.delegate = self
        numTwoTextField.delegate = self
        addOutlet.layer.cornerRadius = 10
        addOutlet.clipsToBounds = true
        subtractOutlet.layer.cornerRadius = 10
        subtractOutlet.clipsToBounds = true
        multiplyOutlet.layer.cornerRadius = 10
        multiplyOutlet.clipsToBounds = true
        divideOutlet.layer.cornerRadius = 10
        divideOutlet.clipsToBounds = true
        
        view.backgroundColor = UIColor.black
    }
    
    @IBAction func addAction(_ sender: UIButton) {
        let text1 = numOneTextField.text!
        let text2 = numTwoTextField.text!
        if let test = Double(text1), let test2 = Double(text2) {
            solutionOutlet.text = String(test + test2)
        }
        else {
            solutionOutlet.text = "Error"
        }
    }
    
    @IBAction func subtractAction(_ sender: UIButton) {
        let text1 = numOneTextField.text!
        let text2 = numTwoTextField.text!
        if let test = Double(text1), let test2 = Double(text2) {
            solutionOutlet.text = String(test - test2)
        }
        else {
            solutionOutlet.text = "Error"
        }
    }
    
    @IBAction func multiplyAction(_ sender: UIButton) {
        let text1 = numOneTextField.text!
        let text2 = numTwoTextField.text!
        if let test = Double(text1), let test2 = Double(text2) {
            solutionOutlet.text = String(test * test2)
        }
        else {
            solutionOutlet.text = "Error"
        }
    }
    
    @IBAction func divideAction(_ sender: UIButton) {
        let text1 = numOneTextField.text!
        let text2 = numTwoTextField.text!
        if let test = Double(text1), let test2 = Double(text2) {
            if test2 != 0 {
            solutionOutlet.text = String(test / test2)
            }
            else {
                solutionOutlet.text = "Divide by Zero Error"
            }
        }
        else {
            solutionOutlet.text = "Error"
        }
    }
    
    
    @IBAction func screenButton(_ sender: UIButton) {
        numOneTextField.resignFirstResponder()
        numTwoTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        numOneTextField.resignFirstResponder()
        numTwoTextField.resignFirstResponder()
        return true
    }


}

