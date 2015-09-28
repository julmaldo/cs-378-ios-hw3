# cs-378-ios-hw3
In this assignment I learned about collection views, how to make custom cells and table views, and more importantly how to
pass data to different views via prepare for segue by creating an app that displays the 4 suits in cards in a table view. 
Then upon clicking on selected table view cell the app segues to a collection view displaying 4 png images of the cards and names of those cards.

Below is assignment description:

Description: This will be an exercise in using together a:
    • Navigation controller
    • Table View controller
    • Collection View controller.

In a Single-View iOS application project do the following:
    • Delete the initial view controller class and related controller in the storyboard.
    • The storyboard should be empty at this point.
    • Add a table view controller to the storyboard and embed it in a navigation controller.
    • Set the table view cell style to Basic.
    • Add a collection view controller to the storyboard.
    • Create a segue connection between the table view cell and the collection view controller.
    • Create a class for the table view controller and associate it with the table view controller in the
      storyboard.
    • Create a class for the collection view controller and associate it with the table view controller.
    • Insert the card images provided (CS378-Homework3-cardimages.zip) into the project in a  
      group named ‘images’.
    • Create a DataModel class that provides access to the (provided) card images and a related
      name.
    • The name for each card will be the name of its suit and card
    • You can define this class any way you want
    • Populate the table view with card suit names from the data model.
    • Populate the collection view using the data model. (hint: pass in the card images/names in
      prepareForSegue).

  
