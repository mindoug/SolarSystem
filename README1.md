#  Solar System PART 1 and Part 2

This section is completed over 2 class sessions that correspond to class curriculum (There is time in between the two classes).  The first view is used while learning how to use Xcode for the first time and also prepares learners to complete the Photo Frame App assignment from Develop in Swift Explorations.  The second part happens after student has learned about control flow, functions and structs and is good preparation for completing Guided Project Light from Fundamentals independently. 

Session 1 Objectives:
- Examine XCode interface: Toolbar area, Navigator area, Editor area, Inspector area, Debug area.
- Practice common Xcode shortcuts
- Change background colors of views and select fonts.
- Drag items from the Library onto the storyboard:  Label, UIView, UIImage, TextView.
- Explore imageView settings
- Note a label is set to 1 lines by default and will truncate.  Change setting to 0 to allow a second line.

Notes Solar System App Part 1

Review 4 main sections in Xcode:
Navigator Area
Toolbar Area
Inspector Area
Debug Area

1. Set a color for the view
2. Add a label at the top: Solar System
3. Add a label at the bottom:  Let’s explore the solar system!  (Change lines to 0)
4. Add a text View and drop the text for it in the chat

“Exploration is in our nature.  We began as wanderers, and we are wanderers still.  We have lingered long enough on the shores of the cosmic ocean.  We are ready at last to set sail for the stars.”  - Carl Sagan, Cosmos

5. Provide the solar system image and show how to drag into assets folder.
6. Adjust the background color and frame color using the custom color from eye dropper.
7. Build and run to test it.

  
Session 2 Objectives:
- Create a button, image, slider, switch, text view and make the appropriate connections and underlying code.
- Add a text field that changes the label to "Welcome, \(name)"
- Use a button to segue to second view controller
- Create and set custom class for second view controller
- Create a swift file with a Sun struct 

Solar System App Notes Part 2

Add a button to the bottom “Start”
Add a text field.  Use placeholder to add “Enter your name”
Add an outlet to the label called nameLabel.
Add an action to the text field and select PRIMARY ACTION TRIGGERED

   @IBAction func keyboardReturnKeyTriggered(_ sender: UITextField) {
        if let text = sender.text {
            nameLabel.text = "Welcome, \(text)"
        }
    }
}
5.  Add a second view controller and use the button to segue to second view controller.
6. Create a custom class SunViewController and select it in the identity inspector for the VC.
7.  Add to the SunViewController:

    image - select the sun image from assets folder
    Slider - Select colors and min and max images and values
    Label - how far is the earth from the sun?
    Label - ?
    Label - million kilometers
    Switch
    Label - underneath switch in yellow(background) "Touch the sun."
    text view 

8.  Connect outlets:

    imageView
    distanceSlider
    distanceLabel
    lightSwitch
    infoTextView

9.  Connect actions:
    
    sliderValueChanged
    lightSwitchToggled

10.   Add the content for the sliderValueChanged function:

@IBAction func sliderValueChanged(_ sender: UISlider) {
        distanceLabel.text = String(sender.value)
    }

11.  Create a Sun Struct

struct Sun {
    var info: String = """
The planets and moons in our solar system are blatantly visible because they reflect sunlight.  Without the nearby Sun, these planets would be cryptic and dark on the sky.
- Seth Shostak
"""
}

12.  Create a variable called sunInfo to get the info from the Sun struct

 let sunInfo = Sun().info


13.  Add code for the lightSwitchToggled
  

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
    
14.  viewDidLoad:  How does it need to look when the view is loaded?

 override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        distanceSlider.isHidden = true
        imageView.isHidden = true
        infoTextView.isHidden = true
    }
