//
//  LoginViewController.swift
//  FYP
//
//  Created by user233249 on 3/29/23.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginClicked(_ sender: UIButton) {
        
        //this is to ensure that users cannot click the 'Sign Up' without filling information into the two text fields
        guard let userEmail = emailTextField.text else { return }
        guard let userPassword = passwordTextField.text else { return }
        
        //this is to authorize email and password per user to make sure two accounts are not created with the same credentials
        Auth.auth().signIn(withEmail: userEmail, password: userPassword) { firebaseResult, error in
            if let err = error {
                print("error")
            }
            else{
                //Go to the home screen
                self.performSegue(withIdentifier: "goToHome", sender: self)
            }
        }    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
