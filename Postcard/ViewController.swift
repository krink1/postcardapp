//
//  ViewController.swift
//  Postcard
//
//  Created by Kris Kennington on 6/3/15.
//  Copyright (c) 2015 Kris Kennington. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        nameLabel.hidden = false
        nameLabel.text = enterName.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterName.text = ""
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

