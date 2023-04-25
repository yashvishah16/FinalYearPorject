//
//  RecommendationsViewController.swift
//  FYP
//
//  Created by user233249 on 4/20/23.
//

import UIKit

class RecommendationsViewController: UIViewController {

    var label1 = ""
    var carbon1 = 0.0
    var label2 = ""
    var carbon2 = 0.0
    var label3 = ""
    var carbon3 = 0.0
    var label4 = ""
    var carbon4 = 0.0
    var label5 = ""
    var carbon5 = 0.0
    var label6 = ""
    var carbon6 = 0.0
    var label7 = ""
    var carbon7 = 0.0
    
    @IBOutlet weak var recom1: UITextView!
    
    @IBOutlet weak var save1: UITextView!
    
    @IBOutlet weak var recom2: UITextView!
    
    @IBOutlet weak var save2: UITextView!
    
    @IBOutlet weak var recom3: UITextView!
    
    @IBOutlet weak var save3: UITextView!
    
    @IBOutlet weak var recom4: UITextView!
    
    @IBOutlet weak var save4: UITextView!
    
    @IBOutlet weak var recom5: UITextView!
    
    @IBOutlet weak var save5: UITextView!
    
    @IBOutlet weak var recom6: UITextView!
    
    @IBOutlet weak var save6: UITextView!
    
    @IBOutlet weak var recom7: UITextView!
    
    @IBOutlet weak var save7: UITextView!
    
    @IBOutlet weak var recSwitch1: UISwitch!
    
    @IBOutlet weak var recSwitch2: UISwitch!
    
    @IBOutlet weak var recSwitch3: UISwitch!
    
    @IBOutlet weak var recSwitch4: UISwitch!
    
    @IBOutlet weak var recSwitch5: UISwitch!
    
    @IBOutlet weak var recSwitch6: UISwitch!
    
    @IBOutlet weak var recSwitch7: UISwitch!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    let maxProgress: Float = 7
    var progress: Float = 0 {
        didSet {
            progressBar.progress = progress
            
            if progress >= maxProgress {
                //Progress is complete
                recSwitch1.isEnabled = false
                recSwitch2.isEnabled = false
                recSwitch3.isEnabled = false
                recSwitch4.isEnabled = false
                recSwitch5.isEnabled = false
                recSwitch6.isEnabled = false
                recSwitch7.isEnabled = false
            }
            else {
                //Progress is not complete
                recSwitch1.isEnabled = true
                recSwitch2.isEnabled = true
                recSwitch3.isEnabled = true
                recSwitch4.isEnabled = true
                recSwitch5.isEnabled = true
                recSwitch6.isEnabled = true
                recSwitch7.isEnabled = true
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recom1.text = label1
        save1.text = String(carbon1)
        recom2.text = label2
        save2.text = String(carbon2)
        recom3.text = label3
        save3.text = String(carbon3)
        recom4.text = label4
        save4.text = String(carbon4)
        recom5.text = label5
        save5.text = String(carbon5)
        recom6.text = label6
        save6.text = String(carbon6)
        recom7.text = label7
        save7.text = String(carbon7)
        
        progressBar.progress = progress
    }
    
    @IBAction func switch1DidChange(_ sender: UISwitch) {
        if recSwitch1.isOn {
            progress += 1/7
        }
        else {
            progress -= 1/7
        }
    }
    
    @IBAction func switch2DidChange(_ sender: UISwitch) {
        if recSwitch2.isOn {
            progress += 1/7
        }
        else {
            progress -= 1/7
        }
    }
    
    @IBAction func switch3DidChange(_ sender: UISwitch) {
        if recSwitch3.isOn {
            progress += 1/7
        }
        else {
            progress -= 1/7
        }
    }
    
    @IBAction func switch4DidChange(_ sender: UISwitch) {
        if recSwitch4.isOn {
            progress += 1/7
        }
        else {
            progress -= 1/7
        }
    }
    
    @IBAction func switch5DidChange(_ sender: UISwitch) {
        if recSwitch5.isOn {
            progress += 1/7
        }
        else {
            progress -= 1/7
        }
    }
    
    
    @IBAction func switch6DidChange(_ sender: UISwitch) {
        if recSwitch6.isOn {
            progress += 1/7
        }
        else {
            progress -= 1/7
        }
    }
    
    @IBAction func switch7DidChange(_ sender: UISwitch) {
        if recSwitch7.isOn {
            progress += 1/7
        }
        else {
            progress -= 1/7
        }
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
