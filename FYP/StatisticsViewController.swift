//
//  StatisticsViewController.swift
//  FYP
//
//  Created by user233249 on 4/14/23.
//

import UIKit
import Charts
class StatisticsViewController: UIViewController {
    
    //this is to get data stored in foodCF, travelCF and energyCF variables from FormViewController
    var variable1 = 0
    var variable2 = 0
    var variable3 = 0
    
    @IBOutlet weak var userPieChart: PieChartView!
    
    @IBOutlet weak var ukPieChart: PieChartView!
    
    @IBOutlet weak var foodText: UITextView!
    
    @IBOutlet weak var travelText: UITextView!
    
    @IBOutlet weak var energyText: UITextView!
    
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
