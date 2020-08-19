//
//  ViewController.swift
//  trafficLightsApp
//
//  Created by ddyack on 19.08.2020.
//  Copyright © 2020 ddyack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var showButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showButton.layer.cornerRadius = 10
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        redLightView.layer.cornerRadius = redLightView.frame.size.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.size.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.size.width / 2
    }
    
    var countPressed = 0
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        showButton.setTitle("Next", for: .normal)
        countPressed += 1
        if countPressed == 1{
            changeAlpha(light: redView)
        } else if countPressed == 2 {
            changeAlpha(light: yellowView)
        } else {
            changeAlpha(light: greenView)
            countPressed = 0
        }
    }
    
    
    enum LightView {
        case red
        case yellow
        case green
    }
    
    var redView = LightView.red
    var yellowView = LightView.yellow
    var greenView = LightView.green
    
    
    func changeAlpha(light: LightView){
        switch light {
        case .red:
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
        case .yellow:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            greenLightView.alpha = 0.3
        case .green:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        }
    }
    
}

