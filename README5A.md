#  Table View Controller

In this section students will develop a basic understanding of implementing a table view controller by adding a table view and detail view controller in the app.  More advanced table views will be not be used in this beginning course.

Students will learn:
    - A table view inherits from UITableView class. It is a scrolling list of data that can be grouped into sections and can have a header and footer.
    - A table view is a great way to display data from an array. The array's count property can inform the table view of how many rows are needed.
    - Each row in a table view is represented by a cell, which is a reusable view. The cell is given a reuse identifier that allows you to pass in the desired cell type to the table view when needed.
    - Table views use cell dequeuing to load only visible cells plus a few extra to enable smooth scrolling and save memory.
    - An index path points to a specific row. It can be accessed by its row and section properties.
    - There are 2 ways to implement a table view- Dragging on a table view controller, or adding a table view to a view controller.  Each has advantages and disadvantages.
    - A table view must have a data source that acts as an intermediary between the table view and the app's data model. An optional delegate manages the table's appearance and behavior.  The delegate and data source are defined in protocols.  The cellForRowAt and numberOfRowsInSection methods are required. The optional numberOfSections method will default to 1 if is not provided.
    - In cellForRowAt, we 1) fetch the correct cell type 2) fetch the model object to be displayed  3) Configure the cell's properties 4) Return the cell
    
Steps:

1.  Drag a table view controller on to the storyboard.  Select the table view and in the size inspector, set the row height to 110. 

2.  Embed in a nav contorller. CTRL drag from tab bar controller to nav controller and select relationship segue: view controllers.  Set the Item to Planets and select SF symbol.

3.  Drag an image view above the table view cell and set the height to 150.  Select the earth and moon image and aspect fill. Drag a label to the bottom of the table view (below the cell) and center it. It should say "Facts and photos from nasa.gov."

4.  drag an image view into the content view of the cell prototype and set constraints top 10, leading 10 and bottom.  Set height and width to 90 x 90.

4.  Drag a label to the right of the image. Set trailing constraint to 0 and top, left and bottom constraints to 10. Set the font to Large Title.

5.  Drag a label underneath the top label and set top and leading to 10 and trailing to 0.  Set constraint to center vertically. Set the font to body.

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
