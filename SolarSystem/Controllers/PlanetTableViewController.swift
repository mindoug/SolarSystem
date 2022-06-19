//
//  PlanetTableViewController.swift
//  SolarSystem
//
//  Created by Mindy Douglas on 5/7/22.
//

import UIKit

class PlanetTableViewController: UITableViewController {
    
    var planets = [Planet]()

    override func viewDidLoad() {
        super.viewDidLoad()
        planets = Planet.loadPlanets()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        // return the number of rows
        
        return planets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // step 1 dequeue cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlanetCell", for: indexPath) as! PlanetTableViewCell

        // step 2 fetch model object to display
        let planet = planets[indexPath.row]
        
        // step 3 configure cell
        cell.update(with: planet)
        
        // step 4 return cell
        return cell
    }
    
    // TABLE VIEW DELEGATE METHODS
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // get planet
        let planet = planets[indexPath.row]
        
        performSegue(withIdentifier: "planetSegue", sender: planet)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailViewController,
           let sender = sender as? Planet {
            destination.planet = sender
        }
    }
}
