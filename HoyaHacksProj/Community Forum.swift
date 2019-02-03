//
//  Community Forum.swift
//  HoyaHacksProj
//
//  Created by Ximena Perez on 2/2/19.
//  Copyright © 2019 Ximena Perez. All rights reserved.
//

import UIKit

class CommunityForumController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Community Forum has loaded.")
    }
    
    
    @IBAction func LoadFirstWebsite(_ sender: Any) {
        let url = URL(string: "https://dreamact.info/forum/")
        UIApplication.shared.canOpenURL(url!)
        UIApplication.shared.open(url!, options: [:],
                                  completionHandler:nil)
    }
    
    
    
}
