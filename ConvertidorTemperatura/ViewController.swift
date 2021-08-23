//
//  ViewController.swift
//  ConvertidorTemperatura
//
//  Created by user189791 on 8/19/21.
//

import UIKit

class ViewController: UIViewController {
    let temperatureConverter = TemperatureConverter()
    @IBOutlet weak var fahrenheitTextField: UITextField!
    @IBOutlet weak var celsiusTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func convertToFahrenheit(_ sender: UIButton) {
        fahrenheitTextField.text = ""
        if let celsiusValue = celsiusTextField.text {
            if !celsiusValue.isEmpty {
                let fahrenheitValue = temperatureConverter.convert(temperature: Temperature(value: Float16(celsiusValue)!, unit: Temperature.Unit.CELSIUS), unitToConvert: Temperature.Unit.FAHRENHEIT)
                print("Farenheit " + String(fahrenheitValue.value))
                fahrenheitTextField.text = String(fahrenheitValue.value)
            } else {
                print("Celcius value is empty")
            }
        }
    }
    
}

