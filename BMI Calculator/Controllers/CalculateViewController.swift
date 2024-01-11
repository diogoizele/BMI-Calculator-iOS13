//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculateBrain = CalculateBrain()
    
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        calculateBrain = CalculateBrain()
        
        setupValues()
    }

    @IBAction func onChangeHeight(_ sender: UISlider) {
        
        heightValueLabel.text = String(format: "%.2fm", sender.value)
    }
    
    @IBAction func onChangeWeight(_ sender: UISlider) {
        
        weightValueLabel.text = "\(Int(sender.value))kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        calculateBrain.calculateBmi(height: heightSlider.value, weight: weightSlider.value)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVc = segue.destination as! ResultsViewController
            
            destinationVc.bmi = calculateBrain.getBMI()
        }
    }
    
    func setupValues() {
        
        let height: Float = 1.67
        let weight = 64
        
        heightSlider.value = height
        weightSlider.value = Float(weight)
        
        heightValueLabel.text = String(format: "%.2fm", height)
        weightValueLabel.text = "\(weight)kg"
    }
    
}

