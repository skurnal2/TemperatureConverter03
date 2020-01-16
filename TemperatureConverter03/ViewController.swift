//
//  ViewController.swift
//  TemperatureConverter03
//
//  Created by Siddharth Kurnal on 1/15/20.
//  Copyright © 2020 Siddharth Kurnal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celciusTemperatureLabel: UILabel!
    
    @IBOutlet weak var fahrenheitTemperatureLabel: UILabel!
    
    @IBOutlet weak var temperatureStepper: UIStepper!
    
    @IBAction func changeTemperature(_ sender: UIStepper) {
        let tempConverter = TemperatureConverter()
        let celcius:Double = temperatureStepper.value
        let fahrenheit = tempConverter.celciusToFahrenheit(Double(celcius))
        celciusTemperatureLabel.text = "\(String(format: "%.2f", celcius))°C"
        fahrenheitTemperatureLabel.text = "\(String(format: "%.2f", fahrenheit))°F"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }



}

