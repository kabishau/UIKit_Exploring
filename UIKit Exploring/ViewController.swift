//
//  ViewController.swift
//  UIKit Exploring
//
//  Created by user128830 on 8/15/17.
//  Copyright © 2017 user128830. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var toggle: UISwitch!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // making connection between function and property programmatically
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        if toggle.isOn {
            print("ON")
        } else {
            print("OFF")
        }
        print("The slider is set to \(slider.value)")
        print("Button is tapped")
        
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch is ON")
        } else {
            print("Switch is OFF")
        }
        
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        print("The current value is \(sender.value)")
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    




}

