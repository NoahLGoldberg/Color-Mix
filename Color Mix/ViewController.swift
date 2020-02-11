//
//  ViewController.swift
//  Color Mix
//
//  Created by Noah Goldberg on 1/30/20.
//  Copyright © 2020 Noah Goldberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redNumber: UILabel!
    @IBOutlet weak var greenNumber: UILabel!
    @IBOutlet weak var blueNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        setColor()
    }
    @IBAction func switchChanged(_ sender: UISwitch) {
        setColor()
    }
    
    func setColor() {
        var red:   CGFloat = 1
        var green: CGFloat = 1
        var blue:  CGFloat = 1
        
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
           green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
           blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(
            red: red,
            green: green,
            blue: blue,
            alpha: 1
        )
        
        self.view.backgroundColor = color
        
        updateLabels()
    }
    
    func updateLabels() {
        redNumber.text   = String(Int(redSlider.value * 100) ) + "%"
        greenNumber.text = String(Int(greenSlider.value * 100) ) + "%"
        blueNumber.text  = String(Int(blueSlider.value * 100) ) + "%"
    }
}




