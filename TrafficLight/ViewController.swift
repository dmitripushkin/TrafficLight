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
    
    enum LightColor {
        case red
        case yellow
        case green
        case off
    }
    
    var lightColorSet: LightColor = .off
    
    
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
        pushButton.setTitle("Push again", for: .normal)
        
      
        
        
        switch lightColorSet {
        case .red:
            pushButton.setTitle("Push", for: .normal)
            
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
          
            lightColorSet = .yellow
            
        case .yellow:
            pushButton.setTitle("One more time", for: .normal)
            
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
            
            lightColorSet = .green
            
        case .green:
            pushButton.setTitle("WALK!", for: .normal)
            
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            
            lightColorSet = .red
      
        case .off:
            lightColorSet = .red
        }
       
        }

}

