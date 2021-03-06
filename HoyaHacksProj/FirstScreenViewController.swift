//
//  FirstScreenView.swift
//  HoyaHacksProj
//
//  Created by Ximena Perez on 2/2/19.
//  Copyright © 2019 Ximena Perez. All rights reserved.
//

import UIKit
import Firebase

class FirstScreenViewController: UIViewController {
    
    @IBAction func HomeButtonPressed(_ sender: Any) {
        print("Home Button pressed.")
    }

    @IBAction func EMERGENCYPressed(_ sender: Any) {
        print("EMERGENCY Button pressed.")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        print("First Page has loaded.")
    }
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "alreadyLoggedIn", sender: nil)
        }
    }
    
    
}
