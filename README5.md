#  Table View Controller

1.  Drag a table view controller on to the storyboard.  Embed in a nav contorller. CTRL drag from tab bar controller to nav controller and select relationship segue: view controllers.  Set the Item to Planets and select SF symbol.

2.  Drag an image view above the table view cell and set the height to 150.  Select the earth and moon image and aspect fill.

3.  drag an image view into the content view of the cell prototype and set constraints top, leading and bottom.  Set height and width to 100 x 100.

4.  Drag a label to the right of the image. Set top and trailing constraints to 0 and left constraint to 10. Set the font to Large Title.

5.  Drag a label underneath the top label and set leading to 10 and trailing to 0.  Set constraint to center vertically. Set the font to body.

6.  Add a new cocoa touch file called PlanetTableViewCell that inherits from UITableViewCell.  Select the class in the identity inspector of the cell. In the attrbutes inspector for the cell, set the identifier to "Planet Cell"

7.  Create the following outlets from the table view cell to the cell class:  planetImage, nameLabel, shortDescriptionLabel.

8.  Create a new cocoa touch file called PlanetTableViewController that inherits from UITableViewController. Set the class in the identity inspector.

9.  Create a new swift file called Planet for the model.  
    
        struct Planet {
            var name: String
            var shortDescription: String
            var description: String
            var fact: String
            var planetImage: UIImage?
        }
        
10.  Create a function in your Planet struct called loadPlanets() that supplies the array of planets for your table view.  The shortDescription, Description and Fact properties will be assigned to a constant since the text is long.  Create a constants struct and copy the information into the struct.

    static func loadPlanets() -> [Planet] {
        return 
    }
    
11.  call the function in viewDidLoad of the tableViewController:

        planets = Planet.loadPlanets()

12.  At the top of the PlanetTableViewController, add a property to hold an array of planets.

        var planets = [Planets]()
 
13.  In numberOfRowsInSection return plants.count.  (can delete numberOfSections)

14.  Uncommment cellForRowAt.  1) dequeue the cell  2) fetch the model object to display 3) configure the cell  4) return the cell

        // step 1 dequeue cell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlanetCell", for: indexPath) as! PlanetTableViewCell

        // step 2 fetch model object to display
        
        let planet = planets[indexPath.row]
        
        // step 3 configure cell
        
        cell.update(with: planet)
        
        // step 4 return cell
        
        return cell
