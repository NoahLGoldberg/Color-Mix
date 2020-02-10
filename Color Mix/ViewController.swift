//
//  ViewController.swift
//  Color Mix
//
//  Created by Noah Goldberg on 1/30/20.
//  Copyright © 2020 Noah Goldberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        setColor()
    }
    @IBAction func switchChanged(_ sender: UISwitch) {
        setColor()
    }
    
    func setColor() {
        var red = CGFloat(1)
        var green = CGFloat(1)
        var blue = CGFloat(1)
        colorView.backgroundColor = UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1)
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
           green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
           blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(displayP3Red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
        
        colorView.backgroundColor = color
    }
}




