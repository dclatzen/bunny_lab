//
//  LoginViewController.swift
//  Bunny_lab
//
//  Created by computer on 10/18/16.
//  Copyright © 2016 Myself. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func didTapLogIn(_ sender: AnyObject) {
        // Do login stuff
        // if correct credentials
        
        if emailField.text == "kingsley" && passwordField.text == "dog" {
            shouldPerformSegue(withIdentifier: "loginSegue", sender: nil)
        } else {
            delay(0.4, closure: { 
                self.activityIndicator.stopAnimating()
                let alertController = UIAlertController(title: "Bad Credentials", message: "Did you forget your pw?", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction) in
                })
                alertController.addAction(okAction)
                self.present(alertController, animated: true, completion: nil)
            })
        }
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
