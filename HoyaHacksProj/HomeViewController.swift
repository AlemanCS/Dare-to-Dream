//
//  ViewController.swift
//  HoyaHacksProj
//
//  Created by Ximena Perez on 2/2/19.
//  Copyright © 2019 Ximena Perez. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func SignUpPressed(_ sender: Any) {
        print("SignUp pressed.")
        self.performSegue(withIdentifier: "SignUpViewSegue", sender: self)
    }
    @IBAction func BackButtonPressed(_ sender: Any) {
        print("Back button pressed.")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("HomeView has loaded.")
    }


}

