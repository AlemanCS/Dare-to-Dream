//
//  ICEButton.swift
//  HoyaHacksProj
//
//  Created by Ximena Perez on 2/2/19.
//  Copyright © 2019 Ximena Perez. All rights reserved.
//

import UIKit

class ICEButtonViewController: UIViewController {
    
    @IBAction func ICEButtonPressed(_ sender: Any) {
        print("ICE Button pressed.")
        //self.performSegue(withIdentifier: "ICEButtonSegue", sender: self)
    }
    @IBAction func BackPressed(_ sender: Any) {
        print("Back button pressed.")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("ICE Button Page has loaded.")
    }
}
