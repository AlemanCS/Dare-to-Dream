//
//  Healthcare Information.swift
//  HoyaHacksProj
//
//  Created by Ximena Perez on 2/2/19.
//  Copyright © 2019 Ximena Perez. All rights reserved.
//

import UIKit

class HealthcareInformationController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Healthcare Information has loaded.")
    }
    
    @IBAction func loadFirstWebsite(_ sender: Any) {
        let url = URL(string: "https://www.migrationpolicy.org/research/health-care-immigrant-families-current-policies-and-issues")
        UIApplication.shared.canOpenURL(url!)
        UIApplication.shared.open(url!, options: [:],
                                  completionHandler:nil)
    }
    
    @IBAction func loadSecondWebsite(_ sender: Any) {
        let url = URL(string: "https://www.healthcare.gov/immigrants/coverage/")
        UIApplication.shared.canOpenURL(url!)
        UIApplication.shared.open(url!, options: [:],
                                  completionHandler:nil)
    }
    
    @IBAction func loadThirdWebsite(_ sender: Any) {
        let url = URL(string: "http://www.ncsl.org/research/immigration/health.aspx")
        UIApplication.shared.canOpenURL(url!)
        UIApplication.shared.open(url!, options: [:],
                                  completionHandler:nil)
    }
}



