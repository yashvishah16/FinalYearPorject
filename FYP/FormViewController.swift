//
//  FormViewController.swift
//  FYP
//
//  Created by user233249 on 4/12/23.
//

import UIKit

class FormViewController: UIViewController {
    
    //this variable stores the total carbon footprint of the user which would then be updated on the home page
    var toalCF = 0

    //these three variables are to keep track of each category's carbon footprint in kg CO2 emissions
    //these would then be used to form the chart for statistics page
    var foodCF = 0
    var travelCF = 0
    var energyCF = 0
    //stores the kg CO2 emitted per km for the 5 modes of travel
    var modeTravel = 0
    
    //this field stores the user's diet type
    @IBOutlet weak var dietType: UITextField!
    
    //these are user's ingredient intake buttons
    @IBOutlet weak var milkBtn: UIButton!
    
    @IBOutlet weak var vegetablesBtn: UIButton!
    
    @IBOutlet weak var rootVegBtn: UIButton!
    
    @IBOutlet weak var fruitsBtn: UIButton!
    
    @IBOutlet weak var driedFruitsBtn: UIButton!
    
    @IBOutlet weak var breadBtn: UIButton!
    
    @IBOutlet weak var oatsCerealBtn: UIButton!
    
    @IBOutlet weak var nutellaBtn: UIButton!
    
    @IBOutlet weak var butterBtn: UIButton!
    
    @IBOutlet weak var peasBtn: UIButton!
    
    @IBOutlet weak var herbsBtn: UIButton!
    
    @IBOutlet weak var nutsBtn: UIButton!
    
    @IBOutlet weak var yogurtBtn: UIButton!
    
    @IBOutlet weak var mushroomsBtn: UIButton!
    
    @IBOutlet weak var tunaBtn: UIButton!
    
    @IBOutlet weak var chickenBtn: UIButton!
    
    @IBOutlet weak var baconBtn: UIButton!
    
    @IBOutlet weak var steakBtn: UIButton!
    
    //these variables are for the 18 ingredient tap conditions
    var flag1 = false
    var flag2 = false
    var flag3 = false
    var flag4 = false
    var flag5 = false
    var flag6 = false
    var flag7 = false
    var flag8 = false
    var flag9 = false
    var flag10 = false
    var flag11 = false
    var flag12 = false
    var flag13 = false
    var flag14 = false
    var flag15 = false
    var flag16 = false
    var flag17 = false
    var flag18 = false
    
    //these are user's modes of travel buttons
    @IBOutlet weak var flightBtn: UIButton!
    
    @IBOutlet weak var trainBtn: UIButton!
    
    @IBOutlet weak var busBtn: UIButton!
    
    @IBOutlet weak var carBtn: UIButton!
    
    @IBOutlet weak var bicycleBtn: UIButton!
    
    //these variables are for the 5 modes of travel
    var flag19 = false
    var flag20 = false
    var flag21 = false
    var flag22 = false
    var flag23 = false
    
    //this text field is to store user's distance travelled for the day in km
    @IBOutlet weak var distanceTravelled: UITextField!
    
    //these are radiobuttons for storing and calculating user's carbon footprint based on garbage used for the day
    @IBOutlet weak var yesGarbageBtn: UIButton!
    
    @IBOutlet weak var noGarbageBtn: UIButton!
    
    //these variables are to store user's garbage carbon footprint for the day
    var flag24 = false
    var flag25 = false
    
    //these are radiobuttons for storing and calculating user's carbon footprint based on the electricty used for the day
    @IBOutlet weak var yesElectrictyBtn: UIButton!
    
    @IBOutlet weak var noElectrictyBtn: UIButton!
    
    //these variables are to store user's electricty carbon footprint for the day
    var flag26 = false
    var flag27 = false
    
    //this text field is to store user's digital screen time for the day in per hour format
    @IBOutlet weak var screenTime: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //this is the delegate method used to restrict text field to accept only numeric input from user
        distanceTravelled.delegate = self
        screenTime.delegate = self

        // Do any additional setup after loading the view.
    }
    
    //these 18 buttons are custom checklist for calculating user's carbon footprint based on the ingredients they ate for the day
    //these buttons allows users to click and unclick a particular button multiple times
    @IBAction func milkBtnTapped(_ sender: UIButton) {
        if flag1 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag1 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag1 = false
        }
        //milk = 0.4kg CO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 400
    }
    
    @IBAction func vegBtnTapped(_ sender: UIButton) {
        if flag2 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag2 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag2 = false
        }
        // average of all vegetables from the referenced website = 2.58kg CO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 2580
    }
    
    @IBAction func rootVegBtnTapped(_ sender: UIButton) {
        if flag3 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag3 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag3 = false
        }
        //average of all root vegetables from the referenced website = 0.4kg CO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 400
    }
    
    @IBAction func fruitsBtnTapped(_ sender: UIButton) {
        if flag4 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag4 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag4 = false
        }
        //average of all fruits from the referenced website = 7.925kg CO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 7925
    }
    
    @IBAction func driedFruitsBtnTapped(_ sender: UIButton) {
        if flag5 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag5 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag5 = false
        }
        //dried fruits = 2.9kg CO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 2900
    }
    
    @IBAction func breadBtnTapped(_ sender: UIButton) {
        if flag6 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag6 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag6 = false
        }
        //bread = 1.1kg CO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 1100
    }
    
    @IBAction func oatsBtnTapped(_ sender: UIButton) {
        if flag7 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag7 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag7 = false
        }
        //(oats + cereal)/2 = (1.3+1.6)/2 = 1.45kg CO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 1450
    }
    
    @IBAction func nutellaBtnTapped(_ sender: UIButton) {
        if flag8 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag8 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag8 = false
        }
        //(nutella + jam + honey)/3 = (2.3 + 2.3 + 2.4)/3 = 2.34kgCO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 2340
    }
    
    @IBAction func butterBtnTapped(_ sender: UIButton) {
        if flag9 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag9 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag9 = false
        }
        //(butter + paneer + cheese + tofu)/4 = (9.8 + 2.1 + 13.34 + 1.5)/4 = 6.685kg CO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 6685
    }
    
    @IBAction func peasBtnTapped(_ sender: UIButton) {
        if flag10 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag10 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag10 = false
        }
        //peas, lentils, chickpeas, beans = 2.1kg CO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 2100
    }
    
    @IBAction func herbsBtnTapped(_ sender: UIButton) {
        if flag11 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag11 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag11 = false
        }
        //herbs & spices = 2.1kg CO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 2100
    }
    
    @IBAction func nutsBtnTapped(_ sender: UIButton) {
        if flag12 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag12 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag12 = false
        }
        //nuts & seeds = 2.1kg CO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 2300
    }
    
    @IBAction func yogurtBtnTapped(_ sender: UIButton) {
        if flag13 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag13 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag13 = false
        }
        //(yogurt + cream + chocolate)/3 = (2.4 + 5.9 + 2.4)/3 = 3.57kg CO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 3570
    }
    
    @IBAction func mushroomsBtnTapped(_ sender: UIButton) {
        if flag14 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag14 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag14 = false
        }
        //(mushrooms + prawns + shrimp)/3 = (4.1 + 25 + 3.8)/3 = 10.97kg CO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 10970
    }
    
    @IBAction func tunaBtnTapped(_ sender: UIButton) {
        if flag15 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag15 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag15 = false
        }
        //tuna = 22kg CO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 2200
    }
    
    @IBAction func chickenBtnTapped(_ sender: UIButton) {
        if flag16 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag16 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag16 = false
        }
        //chicken = 8.1kg CO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 8100
    }
    
    @IBAction func baconBtnTapped(_ sender: UIButton) {
        if flag17 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag17 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag17 = false
        }
        //(bacon + eggs)/2 = (10 + 19.1)/2 = 14.55kg CO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 14550
    }
    
    @IBAction func steakBtnTapped(_ sender: UIButton) {
        if flag18 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag18 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag18 = false
        }
        //steak = 83.3kg CO2e
        //foodCF is going to be updated in grams CO2e
        foodCF += 83300
    }
    
    //these are 5 custom checklist buttons for storing and calculating user's carbon footprint based on their mode of travel for the day
    @IBAction func flightBtnTapped(_ sender: UIButton) {
        if flag19 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag19 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag19 = false
        }
        //CO2 emissions from aviation fuel per passenger per km is 115g
        modeTravel += 115
    }
    
    @IBAction func trainBtnTapped(_ sender: UIButton) {
        if flag20 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag20 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag20 = false
        }
        //CO2 emissions from train or national rail per km is 34.5g
        modeTravel += 35
    }
    
    @IBAction func busBtnTapped(_ sender: UIButton) {
        if flag21 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag21 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag21 = false
        }
        //CO2 emissions from bus per km is 102.27g
        modeTravel += 102
    }
    
    @IBAction func carBtnTapped(_ sender: UIButton) {
        if flag22 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag22 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag22 = false
        }
        //CO2 emissions from car(BEV) is not considered as it is out of scope
        //CO2 emissions from car(petrol&diesel) per km is 170.64g
        modeTravel += 171
    }
    
    @IBAction func bicycleBtnTapped(_ sender: UIButton) {
        if flag23 == false {
            sender.setImage(UIImage(named: "checkedsquare"), for: .normal)
            sender.isSelected = true
            flag23 = true
        }
        else {
            sender.setImage(UIImage(named: "square"), for: .normal)
            sender.isSelected = false
            flag23 = false
        }
        //CO2 emissions from bicycle per km is 113.55g
        modeTravel += 113
    }
    
    //these radiobuttons are to calculate and store the user's carbon footprint based on the garbage used for the day
    @IBAction func yesGarbageBtnTapped(_ sender: UIButton) {
        if flag24 == false {
            sender.setImage(UIImage(named: "checkedcircle"), for: .normal)
            sender.isSelected = true
            noGarbageBtn.setImage(UIImage(named: "circle"), for: .normal)
            flag24 = true
            flag25 = false
        } else {
            sender.setImage(UIImage(named: "circle"), for: .normal)
            sender.isSelected = false
            flag24 = false
        }
        //CO2 emissions for an aevrage can is 700g per 1kg of non-recycled waste
        //an average half of a garbage can is 15kg
        //energyCF is updated in grams of CO2e
        energyCF += 10500
    }
    
    @IBAction func noGarbageBtnTapped(_ sender: UIButton) {
        if flag25 == false {
            sender.setImage(UIImage(named: "checkedcircle"), for: .normal)
            sender.isSelected = true
            yesGarbageBtn.setImage(UIImage(named: "circle"), for: .normal)
            flag25 = true
            flag24 = false
        } else {
            sender.setImage(UIImage(named: "circle"), for: .normal)
            sender.isSelected = false
            flag25 = false
        }
    }
    
    //these radiobuttons are to calculate and store the user's carbon footprint based on the electrcity used for the day
    @IBAction func yesElectricityBtnTapped(_ sender: UIButton) {
        if flag26 == false {
            sender.setImage(UIImage(named: "checkedcircle"), for: .normal)
            sender.isSelected = true
            noElectrictyBtn.setImage(UIImage(named: "circle"), for: .normal)
            flag26 = true
            flag27 = false
        } else {
            sender.setImage(UIImage(named: "circle"), for: .normal)
            sender.isSelected = false
            flag26 = false
        }
        //CO2 emissions for average household electricty per day is 9.5kWh where 1kWh = 0.185kg
        //energyCF is updated in grams of CO2e
        energyCF += 1780
    }
    
    @IBAction func noElectricityBtnTapped(_ sender: UIButton) {
        if flag27 == false {
            sender.setImage(UIImage(named: "checkedcircle"), for: .normal)
            sender.isSelected = true
            yesElectrictyBtn.setImage(UIImage(named: "circle"), for: .normal)
            flag27 = true
            flag26 = false
        } else {
            sender.setImage(UIImage(named: "circle"), for: .normal)
            sender.isSelected = false
            flag27 = false
        }
    }
    
    @IBAction func submitBtnTapped(_ sender: UIButton) {
        //converting foodCF value from grams to kilograms
        foodCF = foodCF/1000
        print("The food carbon footprint is \(foodCF)")
        
        //converting a string of numeric input for diatnce travelled to integer value
        let distance: Int? = Int(distanceTravelled.text!)
        //the total travel carbon footprint would be the mode of travel selected by the user x the distance travelled in km
        travelCF =  distance! * modeTravel
        travelCF = travelCF/1000
        
        //converting travelCF value from grams to kilograms
        //travelCF = travelCF/1000
        print("The travel carbon footprint is\(travelCF)")
        
        //converting a string of numeric input for screen time by user to integer format
        let screen: Int? = Int(screenTime.text!)
        
        var screenCF = 0
        var totalScreenCF = 0
        //0.17kg CO2 is emitted for smartphone usage per hour
        //screenCF is updated in grams of CO2e for smartphone usage per hour
        screenCF += 1700
        
        //total screen time would be kg CO2 emitted per hour * number of hours of screen time used by the user
        totalScreenCF = screenCF * screen!
        
        energyCF += totalScreenCF
        
        //converting energyCF value from grams to kilograms
        energyCF = energyCF/1000
        print("The energy carbon footprint is\(energyCF)")
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "carbon_footprint" {
            let destination = segue.destination as! StatisticsViewController
            destination.variable1 = foodCF/1000
            
            let distance: Int? = Int(distanceTravelled.text!)
            travelCF =  distance! * modeTravel
            travelCF = travelCF/1000
            //storing the value of travelCF in variable2 for it to be used in StatisticsViewController
            destination.variable2 = travelCF
            
            
            let screen: Int? = Int(screenTime.text!)
            var screenCF = 0
            var totalScreenCF = 0
            screenCF += 1700
            totalScreenCF = screenCF * screen!
            energyCF += totalScreenCF
            energyCF = energyCF/1000
            //storing the value of energyCF in variable3 for it to be used in StatisticsViewController
            destination.variable3 = energyCF
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

//this is to make the distanceTravelled and screenTime text fields accept only numeric data i.e. number of km for distanceTravelled and number of hours for screenTime
extension FormViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == distanceTravelled {
            let allowedString = "0123456789"
            let allowedStringSet = CharacterSet(charactersIn: allowedString)
            let typedStringSetIn = CharacterSet(charactersIn: string)
            let numbers = allowedStringSet.isSuperset(of: typedStringSetIn)
            return numbers
        }
        if textField == screenTime {
            let allowedString = "0123456789"
            let allowedStringSet = CharacterSet(charactersIn: allowedString)
            let typedStringSetIn = CharacterSet(charactersIn: string)
            let numbers = allowedStringSet.isSuperset(of: typedStringSetIn)
            return numbers
        }
        return true
    }
}
