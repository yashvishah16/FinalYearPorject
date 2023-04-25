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
    
    //this is to provide recommendations through segue to RecommendationsViewController
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
            
            //conditions for updating recommendation 1 in RecommendationsViewController
            if (dietType.text == "NVG" || dietType.text == "non-vegetarian" || dietType.text == "nvg") {
                label1 = "Reduce meat consumption by having plant-based sources like lentils, beans and tofu as an alternative to meat a few times a week."
                carbon1 = 2.0
            }
            if (dietType.text == "VG" || dietType.text == "vegetarian" || dietType.text == "vg"){
                label1 = "Choose to buy fresh produce that is in season and locally grown in the UK to reduce the carbon footprint of transportation and refrigeration."
                carbon1 = 1.2
            }
            if(dietType.text == "V" || dietType.text == "vegan" || dietType.text == "v"){
                label1 = "Even thoug you are on the most sustainable diet, choose to buy from local co-ops to reduce the carbon footprint of food transportation."
                carbon1 = 0.9
            }
            
            //conditions for updating recommendation 2 in RecommendationsViewController
            if (flag1 == true) {
                label2 = "Choose plant-based alternatives such as almond, soy or oat milk to reduce the carbon footprint of dairy production."
                carbon2 = 1.6
            }
            else if (flag6 == true){
                label2 = "Choose to buy whole grain bread instead of white bread to stay healthy."
                carbon2 = 0.7
            }
            else if (flag8 == true){
                label2 = "Choose to buy nutella, jam, honey and butter in glass jars or metal containers to reduce packaging waste."
                carbon2 = 0.9
            }
            else if (flag13 == true){
                label2 = "Choose to buy soy or coconut based yogurt and cream to go sustainable."
                carbon2 = 0.8
            }
            else if (flag12 == true){
                label2 = "Choose to buy nuts, seeds, herbs and spices in bulk to save time and reduce carbon footprint of packaging waste."
                carbon2 = 0.6
            }
            else {
                label2 = "Choose to reduce food waste by planning meals in advance, using leftovers and storing food correctly."
                carbon2 = 1.2
            }
            
            //conditions for updating recommendation 3 in RecommendationsViewController
            if (flag19 == true){
                label3 = "Choose non-stop flights and fly economy class. Consider purchasing carbon offsets to compensate for the emissions produced by your flight."
                carbon3 = 35.0
            }
            else if (flag20 == true){
                label3 = "When travelling by train, opt for economy class instead of first class to reduce the amount of space you take on the train hence, reducing emissions per passenger."
                carbon3 = 7.0
            }
            else if (flag21 == true){
                label3 = "Even though bus being means of public transport is a sustainable option, plan your route in advance and choose direct routes with no stops or changes to reduce travel time and emissions."
                carbon3 = 4.0
            }
            else if (flag22 == true){
                label3 = "If car is your daily mode of travel, consider investing in an electric or hybrid car instead of traditional petrol and diesel cars as they produce fewer emissions."
                carbon3 = 2.0
            }
            else if (flag23 == true){
                label3 = "While you're already using bicycle which is the most sustainble mode of travel, you can choose to ride electric bike or consider walking when possible."
                carbon3 = 3.0
            }
            
            //conditions for updating recommendation 4 in RecommendationsViewController
            if (flag24 == true){
                label4 = "Reduce your waste by opting for reusable alternatives such as cloth napkins onstead of paper ones, resuable containers instead of plastic wrap or foil and refillable water bottles instead of disposable ones."
                carbon4 = 1.8
            }
            else if (flag25 == true){
                label4 = "Reduce packaging waste by choosing products with minimal packaging, bringing your own reusable bags when shopping and opting for loose products instead of pre-packaged items."
                carbon4 = 0.6
            }
            
            //conditions for updating recommendation 5 in RecommendationsViewController
            if (flag26 == true){
                label5 = "Support policies and programs that encourage the use of renewable energy sources such as subsidies for solar panel installation or net metering programs that allow homeowners to sell excess energy back to the grid."
                carbon5 = 5.4
            }
            else if (flag27 == true){
                label5 = "Make sure to turn off lights and electronics when not in use, or use power strips to easilt turn off multiple devices ar once."
                carbon5 = 0.4
            }
            
            //conditions for updating recommendation 6 in RecommendationsViewController
            let screenText = screenTime.text
            if (screenText == "13" || screenText == "14" || screenText == "15" || screenText == "16" || screenText == "17" || screenText == "18" || screenText == "19" || screenText == "20" || screenText == "21" || screenText == "22" || screenText == "23" || screenText == "24") {
                label6 = "Since your screen time is more than 12 hours a day, consider taking long breaks every hour or so, and using energy-saving modes like low power mode."
                carbon6 = 0.4
            }
            else if (screenText == "5" || screenText == "6" || screenText == "8" || screenText == "9" || screenText == "10" || screenText == "11" || screenText == "12") {
                label6 = "Use energy-saving settings on your devices, such as dimming time and setting a shorter auto lock time to reduce energy consumption."
                carbon6 = 0.3
            }
            else if (screenText == "4" || screenText == "3" || screenText == "2" || screenText == "1") {
                label6 = "Since your screen time is less than 5 hours a day, consider using a phone with a smaller screen size or a lower resolution as it uses less energy."
                carbon6 = 0.7
            }
            else {
                label6 = "Set limits on your screen time and take breaks every 30 minutes to reduce eye strain and fatigue."
                carbon6 = 0.2
            }
            //storing the value of recommendation labels along with carbon emissions saved values in StatisticsViewController
            destination.rec1 = label1
            destination.number1 = carbon1
            destination.rec2 = label2
            destination.number2 = carbon2
            destination.rec3 = label3
            destination.number3 = carbon3
            destination.rec4 = label4
            destination.number4 = carbon4
            destination.rec5 = label5
            destination.number5 = carbon5
            destination.rec6 = label6
            destination.number6 = carbon6
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
