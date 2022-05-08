//
//  DetailViewController.swift
//  SolarSystem
//
//  Created by Mindy Douglas on 5/8/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    var name = ""
    var image = UIImage()
    var planetDescription = ""
    var planetFact = ""
    
    var planet: Planet!
    
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetDescriptionLabel: UILabel!
    @IBOutlet weak var planetDescriptionTextView: UITextView!
    @IBOutlet weak var planetFactLabel: UILabel!
    @IBOutlet weak var planetFactTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    func setUpViews() {
        planetImage.image = planet.planetImage
        planetNameLabel.text = planet.name
        planetDescriptionTextView.text = planet.description
        planetFactTextView.text = planet.fact
    }
    
}
