//
//  ExploreViewController.swift
//  SolarSystem
//
//  Created by Mindy Douglas on 4/29/22.
//

import UIKit

class SunViewController: UIViewController {
    
    let sunInfo = Sun().info
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var distanceSlider: UISlider!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var lightSwitch: UISwitch!
    
    @IBOutlet weak var infoTextView: UITextView!
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.tintColor = .black
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoTextView.text = sunInfo
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        distanceLabel.text = String(sender.value)
    }
    
    @IBAction func lightSwitchToggled(_ sender: UISwitch) {
        if lightSwitch.isOn {
            view.backgroundColor = .systemYellow
            lightSwitch.backgroundColor = .clear
            distanceSlider.isHidden = false
            infoTextView.text = sunInfo
            infoTextView.isHidden = false
            imageView.isHidden = false
        } else {
            view.backgroundColor = .black
            imageView.isHidden = true
            distanceSlider.isHidden = true
            infoTextView.isHidden = true
        }
    }
    
    
}
