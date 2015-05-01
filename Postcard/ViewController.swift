//
//  ViewController.swift
//  Postcard
//
//  Created by Vidal Singh on 4/23/15.
//  Copyright (c) 2015 Vidal Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        // this code displays the label text ( the label was checked hidden in the utilities ( left pane )
        
        messageLabel.text = enterMessageTextField.text
        // This code takes the text from the message field and displays it in the label.
        
        messageLabel.textColor = UIColor.redColor()
        // This changes the Label text to any color you want.
        
        enterMessageTextField.text = ""
        // This is to delete the text in the message field and return to the placeholder text.
        
        enterMessageTextField.resignFirstResponder()
        // This is to hide the keyboard after button is pressed
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        // This is to set the button to display " Mail sent" after its pressed.
    }
    
    

}

