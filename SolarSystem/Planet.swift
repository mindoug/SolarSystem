//
//  Planet.swift
//  SolarSystem
//
//  Created by Mindy Douglas on 5/7/22.
//

import Foundation
import UIKit

struct Planet {
 
    var name: String
    var shortDescription: String
    var description: String
    var fact: String
    var planetImage: UIImage?
    
    static func loadPlanets() -> [Planet] {
        return [
            Planet(name: "Mercury", shortDescription: Constants.mercuryS, description: Constants.mercuryD, fact: Constants.mercuryF, planetImage: UIImage(named: "mercury")),
            Planet(name: "Venus", shortDescription: Constants.venusD, description: Constants.venusF, fact: Constants.venusF, planetImage: UIImage(named: "venus")),
            Planet(name: "Earth", shortDescription: Constants.earthS, description: Constants.earthD, fact: Constants.earthF, planetImage: UIImage(named: "earth")),
            Planet(name: "Mars", shortDescription: Constants.marsS, description: Constants.marsD, fact: Constants.marsF, planetImage: UIImage(named: "mars")),
            Planet(name: "Jupiter", shortDescription: Constants.jupiterS, description: Constants.jupiterD, fact: Constants.jupiterF, planetImage: UIImage(named: "jupiter")),
            Planet(name: "Saturn", shortDescription: Constants.saturnS, description: Constants.saturnD, fact: Constants.saturnF, planetImage: UIImage(named: "saturn")),
            Planet(name: "Uranus", shortDescription: Constants.uranusS, description: Constants.uranusD, fact: Constants.uranusF, planetImage: UIImage(named: "uranus")),
            Planet(name: "Neptune", shortDescription: Constants.neptuneS, description: Constants.neptuneD, fact: Constants.neptuneF, planetImage: UIImage(named: "neptune"))
        ]
    }
}
