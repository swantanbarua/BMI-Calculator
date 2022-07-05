//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Swantan Barua on 05/07/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiScore: UILabel!
    @IBOutlet weak var advice: UILabel!
    
    var bmi: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bmiScore.text = bmi
        advice.preferredMaxLayoutWidth = 150
        if Float(bmi ?? "0.0")! > 24.9{
            advice.text = "Gain more weight"
            view.backgroundColor = UIColor.systemRed
        }
        
        else if Float(bmi ?? "0.0")! > 18.5{
            advice.text = "Fit as a fiddle"
            view.backgroundColor = UIColor.systemGreen
        }
        
        else{
            advice.text = "Eat less and workout"
            view.backgroundColor = UIColor.systemPurple
        }
    }
    
    @IBAction func recalculateBMI(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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
