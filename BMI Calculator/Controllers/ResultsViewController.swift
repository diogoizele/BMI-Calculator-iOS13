//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Diogo Gabriel Izele on 08/01/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var bmi: BMI?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupResultView()
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    private func setupResultView() {
        bmiLabel.text = bmi?.getFormattedValue()
        view.backgroundColor = bmi?.color
        adviceLabel.text = bmi?.advice
    }
}
