//
//  StatisticsViewController.swift
//  FYP
//
//  Created by user233249 on 4/14/23.
//

import UIKit
import Charts
class StatisticsViewController: UIViewController {
    
    //this is to get data stored in foodCF, travelCF, energyCF and totalCF variables from FormViewController
    var variable1 = 0
    var variable2 = 0
    var variable3 = 0
    
    @IBOutlet weak var userPieChart: PieChartView!
    
    @IBOutlet weak var ukPieChart: PieChartView!
    
    @IBOutlet weak var foodText: UITextView!
    
    @IBOutlet weak var travelText: UITextView!
    
    @IBOutlet weak var energyText: UITextView!
    
    //this is to store variables from FormViewController for RecommendationsViewController
    var rec1 = ""
    var number1 = 0.0
    var rec2 = ""
    var number2 = 0.0
    var rec3 = ""
    var number3 = 0.0
    var rec4 = ""
    var number4 = 0.0
    var rec5 = ""
    var number5 = 0.0
    var rec6 = ""
    var number6 = 0.0
    var rec7 = ""
    var number7 = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //user pie chart uses data entered by the user to show the statistics based on category
        let foodDataEntry = PieChartDataEntry(value: Double(variable1))
        let travelDataEntry = PieChartDataEntry(value: Double(variable2))
        let energyDataEntry = PieChartDataEntry(value: Double(variable3))
        let userpieChartDataSet = PieChartDataSet(entries: [foodDataEntry, travelDataEntry, energyDataEntry], label: "")
        let userpieChartData = PieChartData(dataSet: userpieChartDataSet)
                
        let colors = [UIColor(named: "food"), UIColor(named: "travel"), UIColor(named: "energy")]
        userpieChartDataSet.colors = colors as! [NSUIColor]

        userPieChart.data = userpieChartData
        userPieChart.legend.enabled = false // Hide the legend
        
        //uk pie chart uses avergae individual carbon footprint values per category to represent the difference between the user's kg CO2 emissions vs an avergae individual's kg CO2 emissions per day
        let ukFood = PieChartDataEntry(value: 13.89)
        let ukTravel = PieChartDataEntry(value: 64.47)
        let ukEnergy = PieChartDataEntry(value: 7.6)
        let ukpieChartDataSet = PieChartDataSet(entries: [ukFood, ukTravel, ukEnergy], label: "")
        let ukpieChartData = PieChartData(dataSet: ukpieChartDataSet)
        ukpieChartDataSet.colors = colors as! [NSUIColor]
        ukPieChart.data = ukpieChartData
        ukPieChart.legend.enabled = false
        
        foodText.text = String(variable1)
        travelText.text = String(variable2)
        energyText.text = String(variable3)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "recommendations" {
            let destination = segue.destination as! RecommendationsViewController
            destination.label1 = rec1
            destination.carbon1 = number1
            destination.label2 = rec2
            destination.carbon2 = number2
            destination.label3 = rec3
            destination.carbon3 = number3
            destination.label4 = rec4
            destination.carbon4 = number4
            destination.label5 = rec5
            destination.carbon5 = number5
            destination.label6 = rec6
            destination.carbon6 = number6
            
            //conditions fpr updating recommendation 7 in RecommendationsViewController
            if ((Double(variable1) > 13.89) && (variable1 > variable2) && (variable1 > variable3)){
                rec7 = "Adopt a plant-based diet for at least 4 meals a week to significantly reduce your food carbon footprint."
                number7 = 6.0
            }
            else if ((Double(variable2) > 64.47) && (variable2 > variable1) && (variable2 > variable3)){
                rec7 = "Consider walking more to nearby destinations or consider carpooling and ride-sharing if you have to travel long distances frequently in order to reduce the number of vehicles on the road."
                number7 = 4.0
            }
            else if ((Double(variable3) > 7.76) && (variable3 > variable1) && (variable3 > variable2)){
                rec7 = "Use natural light and ventillation instead of air conditioing/heating, especially during the day to reduce your energy carbon footprint."
                number7 = 1.5
            }
            destination.label7 = rec7
            destination.carbon7 = number7
        }
    }

}
