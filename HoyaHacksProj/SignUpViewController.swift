//
//  SignUpScreenViewController.swift
//  HoyaHacksProj
//
//  Created by Ximena Perez on 2/2/19.
//  Copyright © 2019 Ximena Perez. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase


class SignUpScreenViewController: UIViewController {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var passwordConfirm: UITextField!
    @IBOutlet weak var phone1: UITextField!
    @IBOutlet weak var email1: UITextField!
    @IBOutlet weak var phone2: UITextField!
    @IBOutlet weak var email2: UITextField!
    
    var ref: DatabaseReference!
    
    
    @IBAction func BackButtonPressed(_ sender: Any) {
        print("Back button pressed.")
    }
    
    @IBAction func SaveInfoPressed(_ sender: Any) {
        print("Save Info button pressed.")
        if password.text != passwordConfirm.text {
            let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        else{
            Auth.auth().createUser(withEmail: email.text!, password: password.text!){ (user, error) in
                if error == nil {
                    guard let uid = Auth.auth().currentUser?.uid else { return }
                    self.ref.child("users/\(uid)")
                    self.ref.child("users").child(uid).child("phone").setValue(self.phone.text!)
                    self.ref.child("users").child(uid).child("email").setValue(self.email.text!)
                    self.ref.child("contacts/\(uid)")
                    self.ref.child("contacts").child(uid).child("phone1").setValue(self.phone1.text!)
                    self.ref.child("contacts").child(uid).child("email1").setValue(self.email1.text!)
                    self.ref.child("contacts").child(uid).child("email2").setValue(self.email2.text!)
                    self.ref.child("contacts").child(uid).child("phone2").setValue(self.phone2.text!)
                    self.performSegue(withIdentifier: "signupToHome", sender: self)
                }
                else{
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ref = Database.database().reference()
    }
    
    
}
