//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Muhammad Rehan Yousaf on 15/05/2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var WeightLabel: UILabel!
    @IBOutlet weak var heightlabel: UILabel!
    
    @IBOutlet weak var WeightSlider: UISlider!
    @IBOutlet weak var HeightSlider: UISlider!
    
    @IBOutlet weak var CalculateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Height Slider Range
               HeightSlider.minimumValue = 100
               HeightSlider.maximumValue = 250
               HeightSlider.value = 170

               // Weight Slider Range
               WeightSlider.minimumValue = 30
               WeightSlider.maximumValue = 150
               WeightSlider.value = 70

               updateUI()
    }
    
    func updateUI() {

            let height = Int(HeightSlider.value)
            let weight = Int(WeightSlider.value)

            heightlabel.text = "\(height) cm"
            WeightLabel.text = "\(weight) kg"
        }
    
    @IBAction func wightsliderchanged(_ sender: UISlider) {
        updateUI()
    }
    
    @IBAction func heightsliderchanged(_ sender: UISlider) {
        updateUI()
    }
    
    
    @IBAction func Btnpressed(_ sender: Any) {

        
        let height = HeightSlider.value / 100
            let weight = WeightSlider.value

            let bmiValue = weight / (height * height)

            performSegue(withIdentifier: "gotoresult", sender: bmiValue)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoresult" {
            
            let destinationVC = segue.destination as! ResultViewController
            
            if let bmi = sender as? Float {
                destinationVC.bmitext = bmi
            }
        }
    }
    
    
}

