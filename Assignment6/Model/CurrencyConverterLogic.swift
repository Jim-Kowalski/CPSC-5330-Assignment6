//
//  CurrencyConverterLogic.swift
//  Assignment6
//
//  Created by James Kowalski on 2/12/24.
//

import Foundation
class CurrencyConverterLogic
{
    //-------------------------------------------
    //The following variables define the exchange
    //rates for each currency
    //-------------------------------------------
    private var dblCadExchangeRate = 1.35
    private var dbGbpExchangeRate = 0.79
    private var dblEurExchangeRate = 0.93
    private var dblJpyExchangeRate = 150.22
    
    
    //-------------------------------------------
    //The following variables flag whether to
    //show the currency or not.
    //-------------------------------------------
    private var GBPFlag = true
    private var JPYFlag = true
    private var EURFlag = true
    private var CADFlag = true
    
    //-------------------------------------------
    //Getters and Setters for variables
    //-------------------------------------------
    func GetCADFlag() -> Bool
    {
        return CADFlag
    }
    func GetEURFlag () -> Bool
    {
        return EURFlag
    }
    func GetGBPFlag() -> Bool
    {
        return GBPFlag
    }
    func GetJPYFlag() -> Bool
    {
        return JPYFlag
    }
    func SetCADFlag(_ blnValue : Bool)
    {
        CADFlag = blnValue
    }
    func SetEURFlag(_ blnValue : Bool)
    {
        EURFlag = blnValue
    }
    func SetGBPFlag(_ blnValue : Bool)
    {
        GBPFlag = blnValue
    }
    func SetJPYFlag(_ blnValue : Bool)
    {
        JPYFlag = blnValue
    }
    //-------------------------------------------
    //Returns the number of Great Britain Pounds
    //to US Dollars
    //-------------------------------------------
    func CalculateGBP(intUSD : Int) -> Double
    {
        return convertUsDollars(intUSD: intUSD, exchangeRate: dbGbpExchangeRate)
    }
    //-------------------------------------------
    //Returns the number of Japanese Yen to US
    //Dollars
    //-------------------------------------------
    func CalculateJPY(intUSD : Int) -> Double
    {
        return convertUsDollars(intUSD: intUSD, exchangeRate: dblJpyExchangeRate)
    }
    //-------------------------------------------
    //Returns the number of Euro to US
    //Dollars
    //-------------------------------------------
    func CalculateEUR(intUSD : Int)-> Double
    {
        return convertUsDollars(intUSD: intUSD, exchangeRate: dblEurExchangeRate)
    }
    //-------------------------------------------
    //Returns the number of Canadian Dollars to
    //US Dollars
    //-------------------------------------------
   func CalculateCAD(intUSD : Int)-> Double
    {
        return convertUsDollars(intUSD: intUSD, exchangeRate: dblCadExchangeRate)
    }
    //-------------------------------------------
    //Returns whether the string passed into the
    //method is able to be converted to an Int.
    //-------------------------------------------
    func isStringAnInteger(_ strNumber: String) -> Bool {
        return Int(strNumber) != nil
    }
    
    //-------------------------------------------
    //Converts the specified US Dollars to
    //another currency based on the specified
    //exchange rate.
    //-------------------------------------------
    func convertUsDollars(intUSD: Int, exchangeRate: Double) -> Double
    {
        let dblReturn = Double(intUSD) * exchangeRate;
        return dblReturn
    }
    
}
