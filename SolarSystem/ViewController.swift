//
//  ViewController.swift
//  SolarSystem
//
//  Created by Mindy Douglas on 4/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // select primary action triggered
    @IBAction func keyboaredReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            nameLabel.text = "Welcome, \(text)"
        }
    }
    
}

