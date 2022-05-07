//
//  PlanetTableViewCell.swift
//  SolarSystem
//
//  Created by Mindy Douglas on 5/7/22.
//

import UIKit

class PlanetTableViewCell: UITableViewCell {
    
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var shortDescriptionLabel: UILabel!
    
    func update(with planet: Planet) {
        nameLabel.text = planet.name
        planetImage.image = planet.planetImage
        shortDescriptionLabel.text = planet.shortDescription
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
