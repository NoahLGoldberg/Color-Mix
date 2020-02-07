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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        setColor()
    }
    
    func setColor() {
        let red: CGFloat = redSwitch.isOn ? 1 : 0
        let green: CGFloat = greenSwitch.isOn ? 1 : 0
        let blue: CGFloat = blueSwitch.isOn ? 1 : 0
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        colorView.backgroundColor = color
    }
    
}

