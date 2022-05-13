#  Detail View Controller


1.  Drag a new view controller on to the story board next to the Table View. 

2.  Add an image view, label, label, text field, label and text field.  

3. Set constraints: Put image and planet name label in a stack view, put fact label and fact text field in stack view, and put description label and description in stack view.  Set constraints for each and position using aspect ratio.

4.  Create a new cocoa touch class file named DetailViewController that inherits UIViewController.  Connect the outlets for the UI elements:
    planetImage, planetNameLabel, planetDescriptionLabel, planetDescriptionTextView, planetFactLabel, planetFactTextView

5.  Drag from the table view controller to the detail view controller and select show.  Select the segue and give the view controller an ID of "planetSegue"

6.  On the detail view controller, add properties for each item:
    var name = ""
    var image = UIImage()
    var planetDescription = ""
    var planetFact = ""
    var planet: Planet!
    
6.  Create a function called setupViews() and call it in detail controller's viewDidLoad.
   
    func setUpViews() {
        planetImage.image = planet.planetImage
        planetNameLabel.text = planet.name
        planetDescriptionTextView.text = planet.description
        planetFactTextView.text = planet.fact
    }

7.  In the table view controller, set up the delegate methods:

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
