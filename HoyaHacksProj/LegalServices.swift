//
//  LegalServices.swift
//  HoyaHacksProj
//
//  Created by Ximena Perez on 2/2/19.
//  Copyright © 2019 Ximena Perez. All rights reserved.
//

import UIKit

class LegalServicesController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Legal Services has loaded.")
    }
    
    @IBAction func loadFirstWebsite(_ sender: Any) {
        let url = URL(string: "http://www.immigrantlegalservices.org/")
        UIApplication.shared.canOpenURL(url!)
        UIApplication.shared.open(url!, options: [:],
                                  completionHandler:nil)
    }
    
    @IBAction func loadSecondWebsite(_ sender: Any) {
        let url = URL(string: "https://www.immigrationlawhelp.org/")
        UIApplication.shared.canOpenURL(url!)
        UIApplication.shared.open(url!, options: [:],
                                  completionHandler:nil)
    }
}

