//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Muhammad Rehan Yousaf on 16/05/2026.
//

import UIKit

class ResultViewController: UIViewController {

    var bmitext: Float = 0.0
    @IBOutlet weak var BMIvalue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMIvalue.text = String(format: "%.1f", bmitext)
 
    }
    
    
    @IBAction func recalculatebtn(_ sender: UIButton) {
        dismiss(animated: true)
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
