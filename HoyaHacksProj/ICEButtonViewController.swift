//
//  ICEButton.swift
//  HoyaHacksProj
//
//  Created by Ximena Perez on 2/2/19.
//  Copyright © 2019 Ximena Perez. All rights reserved.
//

import UIKit

class ICEButtonViewController: UIViewController {
    
    
    @IBAction func IceButtonPressed(_ sender: Any) {
        let functionURL = "https://cinnamon-goldfish-4689.twil.io/sms"
        if let url = URL(string: functionURL) {
            let task = URLSession.shared.dataTask(with: url) {
                data, response, error in
                if error != nil {
                    print(error!)
                } else {
                    if let responseString = String(data: data!, encoding: .utf8) {
                        print(responseString)
                    }
                }
            }
            task.resume()
        }

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
