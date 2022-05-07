#  Tab Bar Controller

1.  Embed first view controller in tab bar controller
2.  Select tab and in bar item attributes for tab set title to Home and image to house.  At the top set selectedItem to house.fill
3.  CTRL drag from tab bar controller to sun and select relationship segue: view controllers
4.  Change title of tab to "Sun" and set image to sun.max and selectedItem image to sun.max.fill

5.  build & run to make sure it works

(Note the back button goes away.  In order to use navigation controller and tab bar controller each view controller would have to be embedded in a nav controller)

6.  Delete the navigation controller and make sure tab bar controller is set as initial view controller

7.  delete the button in the first view controller and make sure to set constraints for text field to center vertically and horizontally

8. Change text to title 2 so it looks a little better

9.  build and run again to check

10. Add a view controller called NASA and set up tabs.  

