//
//  ViewController.swift
//  Assignment6
//
//  Created by James Kowalski on 2/18/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtUSD: UITextField!
    @IBOutlet weak var switchEUR: UISwitch!
    @IBOutlet weak var switchGBP: UISwitch!
    @IBOutlet weak var switchCAD: UISwitch!
    @IBOutlet weak var switchJPY: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtUSD.delegate = self
    }
    var dblCadExchangeRate = 1.35
    var dbGbpExchangeRate = 0.79
    var dblEurExchangeRate = 0.93
    var dblJpyExchangeRate = 150.22
    
    @IBAction func btnConvert_Action(_ sender: UIButton) {
        
        if isStringAnInteger(txtUSD.text!)
        {
            let intUSD = Int(txtUSD.text!)!
            if switchCAD.isOn
            {
                var dblConversion = convertUsDollars(intUSD: intUSD,exchangeRate: dblCadExchangeRate)
                print ("Canadian: $\(dblConversion)")
            }
            if switchGBP.isOn
            {
                var dblConversion = convertUsDollars(intUSD: intUSD, exchangeRate: dbGbpExchangeRate)
                print ("Canadian: $\(dblConversion)")
            }
            if switchEUR.isOn
            {
                var dblConversion = convertUsDollars(intUSD: intUSD, exchangeRate: dblEurExchangeRate)
                print ("Euro: $\(dblConversion)")
            }
            if switchJPY.isOn
            {
                var dblConversion = convertUsDollars(intUSD: intUSD, exchangeRate: dblJpyExchangeRate)
                print ("Japanese Yen: $\(dblConversion)")
            }
        }	
        
    }
    func isStringAnInteger(_ str: String) -> Bool {
        return Int(str) != nil
    }
    
    func convertUsDollars(intUSD: Int, exchangeRate: Double) -> Double
    {
        let dblReturn = Double(intUSD) * exchangeRate;
        return dblReturn
    }
    //This delegate function handles key entry
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        if let x = string.rangeOfCharacter(from: NSCharacterSet.decimalDigits)
        {
            return true
        }
        else
        {
            return false
        }
    }
    
}

