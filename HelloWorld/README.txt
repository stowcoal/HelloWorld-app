README for HelloWorld application
        Curtis Stochl
=================================

1. Description

The HelloWorld app allows the user to 
input text into a text field which then
sets the text in a field so that the label
displays the message "Hello <Input>!"

The message will automatically change to
the user's name upon exiting the text
field but the user can also click a button
that will change the message to the input.

The background color of the app is a nice 
lavender color, because I thought the red
was a little to aggressive.  

2. Question

    The tutorial says to send the 
    resignFirstResponder message 
    to theTextField in order to 
    dismiss the keyboard, but 
    the way it is describe this 
    seems like a side-effect of 
    that action. What is the main 
    purpose of the resignFirstResponder 
    message?
    
The main purpose of the resignFirstResponder
message is to remove the FirstResponder status
from an element.  When the textElement stops
being the FirstResponder, the keyboard is dismissed
because it is only available when a textField-esque
element is the FirstResponder.

    
