//
//  ExploreViewController.swift
//  SolarSystem
//
//  Created by Mindy Douglas on 4/29/22.
//

import UIKit

class SunMoonViewController: UIViewController {
    
    let sunInfo = Sun().info
    let moonInfo = Moon().info
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var howFarLabel: UILabel!
    
    @IBOutlet weak var distanceSlider: UISlider!
    
    @IBOutlet weak var mileLabel: UILabel!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var lightSwitch: UISwitch!
    
    @IBOutlet weak var infoTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        self.navigationController?.navigationBar.tintColor = .black
        howFarLabel.text = "How far is the earth from the SUN?"
        howFarLabel.textColor = .black
        infoTextView.text = sunInfo
        view.backgroundColor = .systemYellow
        lightSwitch.backgroundColor = .clear
        lightSwitch.onTintColor = .systemOrange
        lightSwitch.thumbTintColor = .white
        distanceSlider.minimumValue = 0
        distanceSlider.maximumValue = 93
        infoTextView.text = sunInfo
        infoTextView.textColor = .black
        infoTextView.backgroundColor = .systemYellow
        imageView.image = UIImage(named: "sun")
        mileLabel.text = "MILLION miles"
        mileLabel.backgroundColor = .systemYellow
        mileLabel.textColor = .black
        distanceLabel.textColor = .black
        distanceLabel.text = String(distanceSlider.value)
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        distanceLabel.text = String(sender.value)
    }
    
    @IBAction func lightSwitchToggled(_ sender: UISwitch) {
        if lightSwitch.isOn {
            setup()
        } else {
            self.navigationController?.navigationBar.tintColor = .white
            howFarLabel.text = "How far is the earth from the MOON?"
            howFarLabel.textColor = .white
            view.backgroundColor = .black
            imageView.image = UIImage(named: "moon")
            lightSwitch.onTintColor = .systemGray
            lightSwitch.thumbTintColor = .white
            distanceSlider.minimumValue = 0
            distanceSlider.maximumValue = 238.855
            infoTextView.text = moonInfo
            infoTextView.textColor = .white
            infoTextView.backgroundColor = .black
            mileLabel.text = "THOUSAND miles"
            mileLabel.backgroundColor = .black
            mileLabel.textColor = .white
            distanceLabel.textColor = .white
            distanceLabel.text = String(distanceSlider.value)
        }
    }
    
    
}
