//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Swantan Barua on 02/07/22.
//

import UIKit

class BMIController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    
    var height: Float = 0
    var weight: Float = 0
    var bmi: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
        height = sender.value
        heightLabel.text = "\(String(format: "%.2f", height)) m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weight = sender.value
        weightLabel.text = "\(String(format: "%.0f", weight)) kg"
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        bmi = String(format: "%.2f", weight / pow(height, 2))
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = bmi
        }
    }
}

