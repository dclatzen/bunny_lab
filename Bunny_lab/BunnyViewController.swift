//
//  BunnyViewController.swift
//  Bunny_lab
//
//  Created by computer on 10/18/16.
//  Copyright © 2016 Myself. All rights reserved.
//

import UIKit

class BunnyViewController: UIViewController {
    
    
    @IBOutlet weak var responseField: UILabel!
    
    @IBOutlet weak var bunnyImageView: UIImageView!
    
    @IBOutlet weak var inputField: UITextField!
    
    var initialOrigin: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        initialOrigin = bunnyImageView.center
        
        responseField.text = "Hi there!! 😄"
        
        
        
        
    }
    
    
    
    @IBAction func didPresUp(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.3) {
            self.bunnyImageView.center.y = self.bunnyImageView.center.y - 20
        }
        
    }
    
    
    @IBAction func didPressDown(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.3) {
            self.bunnyImageView.center.y = self.bunnyImageView.center.y + 20
        }
    }
    
    
    @IBAction func didPressRight(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.3) {
            self.bunnyImageView.center.x = self.bunnyImageView.center.x + 20
        }
    }
    
    @IBAction func didPressLeft(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.3) {
            self.bunnyImageView.center.x = self.bunnyImageView.center.x - 20
        }
    }
    
    
    @IBAction func didPressShrink(_ sender: AnyObject) {
        self.bunnyImageView.transform = self.bunnyImageView.transform.scaledBy(x:0.8, y:0.8)
    }
    
    @IBAction func didPressGrow(_ sender: AnyObject) {
        self.bunnyImageView.transform = self.bunnyImageView.transform.scaledBy(x:1.2, y:1.2)
    }
    
    
    @IBAction func didPresRotateLeft(_ sender: AnyObject) {
        self.bunnyImageView.transform = self.bunnyImageView.transform.rotated(by: CGFloat(-20 * M_PI / 180))
    }
    
    @IBAction func didPressRotateRight(_ sender: AnyObject) {
        self.bunnyImageView.transform = self.bunnyImageView.transform.rotated(by: CGFloat(20 * M_PI / 180))
    }
    
    @IBAction func didPressReset(_ sender: AnyObject) {
        self.bunnyImageView.transform = CGAffineTransform.identity
        
        UIView.animate(withDuration: 0.6) {
            self.bunnyImageView.transform = CGAffineTransform.identity
        }
    }
    
    
    @IBAction func didPressSend(_ sender: AnyObject) {
        
        if inputField.text!.contains("hello") {
            
            delay(0.4, closure: {
                self.responseField.text = "You said hello somewhere."
            })
            
            
        } else if inputField.text == "What is your name?" {
            
            delay(0.6, closure: {
                self.responseField.text = "What's it to you?!"
            })
            
            
        } else if inputField.text == "Bye" {
            
            delay(0.6, closure: {
                self.responseField.text = "See you later."
            })
            
            
        } else {
            delay(0.6, closure: {
                self.responseField.text = "I'm bored."
            })
        }
        
        inputField.text = ""
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
