#  Solar System Part 2

Session 3- Autolayout

Home
- Delete unnecessary view (frame) and any extra labels.  
- Change image view to aspect fill and set contraints to match safe area so that the image covers the screen.
- Change text of quote to white and adjust placement
- Allow Xcode to suggest appropriate constriants

Sun
- Rename view controller to SunViewController because it makes more sense (demo refactor/rename) and make sure to set class
- put everything in vertical stack (center, fill, 20 spacing)
- set scroll view constraints top, leading, bottom, trailing to 0 and 200 in height
- set infoTextView constraints 0, 0, 0, 0 (pins to frame layout guide)
- ctrl drag infoTextView to frame layout guide and set equal height and width to frame layout
- add height constraints and top/bottom spacing for each of the items except the sun image. Pin sun image 0,0,0 on top, leading and trailing. 
- put everything in a vertical stack view centered and set top, bottom, leading and trailing constraints for the stack view

