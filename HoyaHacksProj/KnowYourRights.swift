//
//  KnowYourRights.swift
//  HoyaHacksProj
//
//  Created by Ximena Perez on 2/2/19.
//  Copyright © 2019 Ximena Perez. All rights reserved.
//

import UIKit

class KnowYourRightsController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Know Your Rights has loaded.")
    }
   
    @IBAction func loadFirstWebsite(_ sender: Any) {
        let url = URL(string: "https://www.aclu.org/know-your-rights/")
        UIApplication.shared.canOpenURL(url!)
        UIApplication.shared.open(url!, options: [:],
                                  completionHandler:nil)
    }
    
    @IBAction func loadSecondWebsite(_ sender: Any) {
        let url = URL(string: "https://www.nlg.org/know-your-rights/")
        UIApplication.shared.canOpenURL(url!)
        UIApplication.shared.open(url!, options: [:],
                                  completionHandler:nil)
    }

    @IBAction func loadThirdWebsite(_ sender: Any) {
        let url = URL(string: "http://iamerica.org/know-your-rights")
        UIApplication.shared.canOpenURL(url!)
        UIApplication.shared.open(url!, options: [:],
                                  completionHandler:nil)
    }
    
    @IBAction func loadFourthWebsite(_ sender: Any) {
        let url = URL(string: "https://www.nilc.org/get-involved/community-education-resources/know-your-rights/")
        UIApplication.shared.canOpenURL(url!)
        UIApplication.shared.open(url!, options: [:],
                                  completionHandler:nil)
    }
}

