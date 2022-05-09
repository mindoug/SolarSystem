//
//  ViewController.swift
//  SolarSystem
//
//  Created by Mindy Douglas on 4/28/22.
//

import UIKit

class ViewController: UIViewController {

    var quote = Quote()
        
        @IBOutlet weak var quoteTextView: UITextView!
        

        override func viewDidLoad() {
            super.viewDidLoad()
            quoteTextView.text = self.quote.randomQuote
            
        }

    
}

