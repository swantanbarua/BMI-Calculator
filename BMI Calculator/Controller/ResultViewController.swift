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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateBMI(_ sender: UIButton) {
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
