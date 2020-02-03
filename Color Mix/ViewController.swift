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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let color = UIColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 1)
        colorView.backgroundColor = color
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        let color = UIColor(displayP3Red: 0.0, green: 0.5, blue: 0.5, alpha: 1)
        colorView.backgroundColor = color
    }
    
}

