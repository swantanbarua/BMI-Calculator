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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
    }
    
}

