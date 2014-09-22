//
//  ViewController.swift
//  Postcard
//
//  Created by Gianluca Puccio on 10/09/14.
//  Copyright (c) 2014 Gianluca Puccio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var MessageLabel: UILabel!
    
    @IBOutlet weak var EnterNameTextField: UITextField!
    
    @IBOutlet weak var EnterAMessageTextField: UITextField!
    
    @IBOutlet weak var MailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SendMessageButtonPress(sender: UIButton)
    {
        // Code will evaluate when the user press the button
        // Adding a comment to test commit to github
        MessageLabel.hidden = false
        MessageLabel.text = EnterAMessageTextField.text
        EnterAMessageTextField.text = ""
        EnterAMessageTextField.resignFirstResponder()
        MessageLabel.textColor = UIColor.redColor()
        MailButton.setTitle("Mail inviata", forState: UIControlState.Normal)
    }

}

