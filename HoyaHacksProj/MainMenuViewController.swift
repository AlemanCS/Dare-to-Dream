//
//  DropDownMenu.swift
//  HoyaHacksProj
//
//  Created by Ximena Perez on 2/2/19.
//  Copyright © 2019 Ximena Perez. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {
    
    @IBAction func EducationalResourcesPressed(_ sender: Any) {
        print("Educational Resources button pressed.")
    }
    @IBAction func LegalServicesPressed(_ sender: Any) {
        print("Legal Services button pressed.")
    }
    @IBAction func HealthcareInformationPressed(_ sender: Any) {
        print("Healthcare Information button pressed.")
    }
    @IBAction func KnowYourRightsPressed(_ sender: Any) {
        print("Know your rights button pressed.")
    }
    @IBAction func CommunityForumPressed(_ sender: Any) {
        print("Community Forum button pressed.")
    }
    @IBAction func EmergencyButtonPressed(_ sender: Any) {
        print("Emergency button pressed.")
    }
    @IBAction func SignUpPressed(_ sender: Any) {
        print("SignUp pressed.")
        self.performSegue(withIdentifier: "SignUpViewSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("HomeView has loaded.")
    }
    
    
}

