//
//  ViewController.swift
//  Assignment6
//
//  Created by James Kowalski on 2/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtUSD: UITextField!
    @IBOutlet weak var switchEUR: UISwitch!
    @IBOutlet weak var switchGBP: UISwitch!
    @IBOutlet weak var switchCAD: UISwitch!
    @IBOutlet weak var switchJPY: UISwitch!
    @IBOutlet weak var lblInvalidValue: UILabel!
    

    var mobjLogic =  CurrencyConverterLogic()

    var CADValue : Double = 0.0
    var EURValue : Double = 0.0
    var GBPValue : Double = 0.0
    var JPYValue : Double = 0.0
    var USDValue : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //---------------------------------------------------
    //The following IB Actions handle the toggle switches
    //and pass their state to the CurrencyConverterLogic
    //object.
    //---------------------------------------------------
    @IBAction func switchEUR_Action(_ sender: UISwitch) {
        mobjLogic.SetEURFlag(sender.isOn)
    }
    
    @IBAction func switchGBP_Action(_ sender: UISwitch) {
        mobjLogic.SetGBPFlag(sender.isOn)
    }
    
    @IBAction func switchCAD_Action(_ sender: UISwitch) {
        mobjLogic.SetCADFlag(sender.isOn)
    }
    
    @IBAction func switchJPY_Action(_ sender: UISwitch) {
        mobjLogic.SetJPYFlag(sender.isOn)
    }

    //-----------------------------------
    //Handles the [Convert] button action
    //-----------------------------------
    @IBAction func btnConvert_Action(_ sender: UIButton) {
        
        //If the value is an integer, calculate the exchange
        //rates and transition to the toCurrencyConverter
        //view. Otherwise, display an error message
        if mobjLogic.isStringAnInteger(txtUSD.text!)
        {
            
            self.USDValue = Int(txtUSD.text!) ?? 0
            self.CADValue = mobjLogic.CalculateCAD(intUSD: USDValue)
            self.JPYValue = mobjLogic.CalculateJPY(intUSD: USDValue)
            self.EURValue = mobjLogic.CalculateEUR(intUSD: USDValue)
            self.GBPValue = mobjLogic.CalculateGBP(intUSD: USDValue)
            self.performSegue(withIdentifier: "toCurrencyConverter", sender: self)
            lblInvalidValue.textColor = .white
        }
        else
        {
            lblInvalidValue.textColor = .red
            
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCurrencyConverter"
        {
            //Pass the variables to the CurrencyConverterView
            //and navigate to it.
            let navigation = segue.destination as! CurrencyConverterView
            navigation.CADFlag = mobjLogic.GetCADFlag()
            navigation.EURFlag = mobjLogic.GetEURFlag()
            navigation.GBPFlag = mobjLogic.GetGBPFlag()
            navigation.JPYFlag = mobjLogic.GetJPYFlag()
            navigation.CADValue = self.CADValue
            navigation.USDValue = self.USDValue
            navigation.EURValue = self.EURValue
            navigation.GBPValue = self.GBPValue
            navigation.JPYValue = self.JPYValue
        }
    }
    
}

