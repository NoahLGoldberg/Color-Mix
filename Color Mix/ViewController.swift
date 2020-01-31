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
        let color = UIColor(displayP3Red: 1.0, green: 1.0, blue: 0.0, alpha: 1)
        colorView.backgroundColor = color
    }


}

