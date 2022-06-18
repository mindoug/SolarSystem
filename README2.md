#  Solar System Part 2

Session 3- Autolayout

AutoLayout and Stack Views are covered in Unit 2 of Develop in Swift Fundamentals.  

Home
- Delete unnecessary view (frame) and any extra labels.  
- Change image view to aspect fill and set contraints to match safe area so that the image covers the screen.
- Change text of quote to white and adjust placement
- Allow Xcode to suggest appropriate constriants

Sun
- Rename view controller to SunMoonViewController because it makes more sense (demo refactor/rename) and make sure to set class
- put everything in vertical stack (center, fill, 10 spacing) and constraints to 0, 0, 0, 0
- set infoTextView constraints 10 leading and trailing and set height to 210 
- add height constraints to each UIelement and either set leading and trailing constraint or center horizontally

ADD MOON:

1.  Add a moon model struct swift file.
2.  Add outlets to the howFar label, mileLabel.  Change slider colors to white.
3.  Add moon constant to top: let moonInfo = Moon().info
4. create a setup() func and call it in the viewDidLoad

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
        infoTextView.backgroundColor = .clear
        imageView.image = UIImage(named: "sun")
        mileLabel.text = "MILLION miles"
        mileLabel.backgroundColor = .systemYellow
        mileLabel.textColor = .black
        distanceLabel.textColor = .black
        distanceLabel.text = String(distanceSlider.value)
    }

5. Adjust the lightSwitchToggled func:

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
            mileLabel.text = "THOUSAND miles"
            mileLabel.backgroundColor = .black
            mileLabel.textColor = .white
            distanceLabel.textColor = .white
            distanceLabel.text = String(distanceSlider.value)
        }
    }


OPTIONAL-

Random solar system quote:

1. Add Quote data swift file with the randomElement function at bottom
    Example:
    
    struct Quote {
    var quotes: [String] = [
    """
    "Insert multi-line quote here..." - Author unknown
    """,
    ...
    ]
    
    lazy var randomQuote = quotes.randomElement()!
    }

2. In the view controller:

    connect an outlet to the text view named quoteTextView

    Add to the top of vc:
    
    var quote = Quote()
 
    Add in viewDidLoad: 
     
    quoteTextView.text = self.quote.randomQuote



