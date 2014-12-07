//
//  ViewController.swift
//  Useless Postcard
//
//  Created by Otavio Monteagudo on 11/12/14.
//  Copyright (c) 2014 Otavio Monteagudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //connections with the ViewController elements. naming
    // them the same name as they are identified in the 'View Controller Scene is
    // good practice.
  
    @IBOutlet weak var messageLabel: UILabel! //static text (a label)
    @IBOutlet weak var nametextfield: UITextField! // textbox that accepts input.
    @IBOutlet weak var messagetextfield: UITextField! // same as above.
    @IBOutlet weak var send_mail_button: UIButton! // the button.
    
    // it is good practice to put graphical elements above text fields in case the text stays a little too big. Also, remember to set the 'label' lines to 0 in the attributes inspector, otherwise, the textfield message would not fit.
    
    
    // default functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //custom functions
    
    
    @IBAction func sendMailButtonPressed(sender: AnyObject) {
        //after button is pressed, let's make the label appear.
        messageLabel.hidden = false

        let alert = UIAlertView() // creates an alert; the control flow will determine its message and "dismiss" button. "title" and ".show()" and independent of the control flow.
         alert.title = "AAA"
         if (messagetextfield.text == "y"){
         alert.message = "yu rok :::::DDDDDDDDD"
         alert.addButtonWithTitle("::DDD")
        } else if (messagetextfield.text == "n") {
         alert.message = "yu suk lmfao"
         alert.addButtonWithTitle("IM SORRY ITS VERY COOL")
        } else {
         alert.message = "PLZ RESPOND 'y' || 'n' 2 QUESHTNIN"
         alert.addButtonWithTitle("OK LOL")
         }
        alert.show() // pops an dismissable alert with message/dismiss button determined by specific user input.
        
        messageLabel.text = messagetextfield.text // this will set the text of label to text input by the user
        
        messageLabel.textColor = UIColor.redColor() // the "textColor" att obviously determines the text color. It was created by Apple for convenience. The default is black, I guess.
        
        messagetextfield.text = "" //this will replace the text in the messagetextfield box to "empty string" so we are able to see our placeholder once again.
        
        messagetextfield.resignFirstResponder() //built-in for iOS 8 and later. Basically, the 'FirstResponder' is what is showing the virtual keyboard on the screen. This built-in method's function basically means that it makes the keyboard go away.
        
        send_mail_button.setTitle("Message Sent", forState: UIControlState.Normal)
        // this method will change the text in the button after it is pressed. There are different states for stuff. The 'normal' state doesn't highlight or disable anything, it keeps the object "normal". Here:
     //   UIControlStateNormal: normal, or default state
     //   UIControlStateHighlighted: highlighted state of a control
     //   UIControlStateDisabled: disabled state of a control
     //   UIControlStateSelected: selected state of a control. For many controls, this state has no effect on behavior or appearance.
    }
    
    

}

