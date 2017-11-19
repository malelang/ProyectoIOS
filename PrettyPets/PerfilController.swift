//
//  PerfilController.swift
//  PrettyPets
//
//  Created by Alejandra Landinez on 11/7/17.
//  Copyright © 2017 LordBoxen. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth

class PerfilController: UIViewController {
    
    @IBAction func Salir(_ sender: UIButton) {
        try! Auth.auth().signOut()
        self.performSegue(withIdentifier: "segue2", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(Auth.auth().currentUser?.email as Any)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
}
