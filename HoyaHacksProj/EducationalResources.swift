//
//  EducationalResources.swift
//  HoyaHacksProj
//
//  Created by Ximena Perez on 2/2/19.
//  Copyright © 2019 Ximena Perez. All rights reserved.
//

import UIKit

class EducationalResourcesController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Educational Resources has loaded.")
    }
    
    @IBAction func loadFirstWebsite(_ sender: Any) {
        let url = URL(string: "https://www.nilc.org/issues/education/")
        UIApplication.shared.canOpenURL(url!)
        UIApplication.shared.open(url!, options: [:],
                                  completionHandler:nil)
    }

    @IBAction func loadSecondWebsite(_ sender: Any) {
        let url = URL(string: "http://www.nea.org/immigration")
        UIApplication.shared.canOpenURL(url!)
        UIApplication.shared.open(url!, options: [:],
                                  completionHandler:nil)
    }
    
    @IBAction func loadThirdWebsite(_ sender: Any) {
        let url = URL(string: "https://mydocumentedlife.org/2016/09/12/scholarships-open-to-undocumented-students/")
        UIApplication.shared.canOpenURL(url!)
        UIApplication.shared.open(url!, options: [:],
                                  completionHandler:nil)
    }
}
    

