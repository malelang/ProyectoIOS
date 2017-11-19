//
//  ViewController.swift
//  PrettyPets
//
//  Created by Alejandra Landinez on 11/6/17.
//  Copyright © 2017 LordBoxen. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

   
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var actionLoggin: UIButton!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    

    @IBAction func Action(_ sender: UIButton) {
        if email.text != "" && password.text != "" {
            if segmentControl.selectedSegmentIndex == 0 {
                Auth.auth().signIn(withEmail: email.text!, password: password.text!, completion: {(user,error) in
                    if user != nil{
                        print("SUCCESSFUL")
                        
                    }else{
                     print("ERROR1")
                        
                    }
                })
            }else{
                Auth.auth().createUser(withEmail: email.text!, password: password.text!, completion: { (user, error) in
                    if user != nil{
                        print("SUCCESSFUL")
                        
                    }else{
                        print("ERROR2")
                        
                    }
                })
            }
       }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

