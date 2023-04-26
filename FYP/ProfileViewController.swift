//
//  ProfileViewController.swift
//  FYP
//
//  Created by user233249 on 4/25/23.
//

import UIKit
import Firebase

class ProfileViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func carbonOffest(_ sender: UIButton) {
        if let url1 = URL(string: "https://carbonneutralbritain.org/"){
            UIApplication.shared.open(url1)
        }
    }
    
    @IBAction func sustainability(_ sender: UIButton) {
        if let url2 = URL(string: "https://21stcenturychallenges.org/sustainability/"){
            UIApplication.shared.open(url2)
        }
    }
    
    @IBAction func netZero(_ sender: UIButton) {
        if let url3 = URL(string: "https://lordslibrary.parliament.uk/mission-zero-independent-review-of-net-zero/"){
            UIApplication.shared.open(url3)
        }
    }
    
    @IBAction func impact(_ sender: UIButton) {
        if let url4 = URL(string: "https://www.unep.org/news-and-stories/story/how-sustainable-living-can-help-counter-climate-crisis"){
            UIApplication.shared.open(url4)
        }
    }
    
    @IBAction func logOut(_ sender: UIButton) {
        performSegue(withIdentifier: "logoutSegue", sender: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
