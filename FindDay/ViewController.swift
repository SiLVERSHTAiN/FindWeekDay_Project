//
//  ViewController.swift
//  FindDay
//
//  Created by Aleksandr on 10/25/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dataTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }

    @IBAction func findDay() {
        
        guard let day = dataTextField.text,
              let month = monthTextField.text,
              let year = yearTextField.text else { return }
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponents) else { return }
        let weekday = dateFormatter.string(from: date)
        
        resultLabel.text = weekday
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

