//
//  ViewController.swift
//  TrafficLight
//
//  Created by Повелитель on 19.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pushButton: UIButton!
    
    @IBOutlet weak var lights: UIStackView!
    
    @IBOutlet weak var redLight: UILabel!
    
    @IBOutlet weak var yellowLight: UILabel!
    
    @IBOutlet weak var greenLight: UILabel!
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        redLight.layer.masksToBounds = true
        
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        yellowLight.layer.masksToBounds = true
        
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        greenLight.layer.masksToBounds = true
        
        pushButton.layer.cornerRadius = 10
      
        
    }

    @IBAction func tappedPushButton() {
   
        if count > 3 {
            count = 0
        }
        
        switch count {
        case 1:
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            count += 1
        case 2:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
            count += 1
        case 3:
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            count += 1
    
        default:
            count += 1
        }

}
}
