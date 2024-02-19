//
//  CurrencyConverterView.swift
//  Assignment6
//
//  Created by James Kowalski on 2/12/24.
//

import UIKit

class CurrencyConverterView: UIViewController {

    @IBOutlet weak var lblUSDValue: UILabel!
    @IBOutlet weak var lblGbpValue: UILabel!
    @IBOutlet weak var lblCadValue: UILabel!
    @IBOutlet weak var lblEurValue: UILabel!
    @IBOutlet weak var lblJpyValue: UILabel!

    @IBOutlet weak var stckGBP: UIStackView!
    @IBOutlet weak var stckCAD: UIStackView!
    @IBOutlet weak var stckEUR: UIStackView!
    @IBOutlet weak var stckJPY: UIStackView!
    
    var GBPFlag = true //Indicates that the British Pound conversion switch is set.
    var JPYFlag = true //Indicates that the Japanese Yen conversion switch is set.
    var EURFlag = true //Indicates that the Euro conversion switch is set.
    var CADFlag = true //Indicates that the Canadian Dollar conversion switch is set.
    
    var CADValue : Double = 0.0 //Specifies the amount converted Canadian Dollar amount to display
    var EURValue : Double = 0.0 //Specifies the amount converted Euro amount to display
    var GBPValue : Double = 0.0 //Specifies the amount converted British Pound amount to display
    var JPYValue : Double = 0.0 //Specifies the amount converted Japanese Yen amount to display
    var USDValue : Int = 0 //Specifies the US Dollar amount to display

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        //Hide the stack views if they haven't been flagged 
        //by to be displayed.
        stckEUR.isHidden = !EURFlag
        stckGBP.isHidden = !GBPFlag
        stckJPY.isHidden = !JPYFlag
        stckCAD.isHidden = !CADFlag
        
        //Set the amounts that shall be displayed on each
        //currency's label.
        lblUSDValue.text = "$ " + String(format: "%.2f", Double(USDValue))
        lblCadValue.text = "$ " + String(format: "%.2f", CADValue)
        lblEurValue.text = "$ " + String(format: "%.2f", EURValue)
        lblGbpValue.text = "$ " + String(format: "%.2f", GBPValue)
        lblJpyValue.text = "$ " + String(format: "%.2f", JPYValue)

    }
    

    @IBAction func btnBackToMain_Action(_ sender: UIButton) {
        //Return to the main view.
        dismiss(animated: true)
    }
    
}
