//
//  ViewController.swift
//  ColorChanger
//
//  Created by MV Braverman on 5/11/17.
//  Copyright © 2017 brvrmn.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var hexValueLabel: UILabel!
    
    @IBOutlet weak var colorViewer: UIView!
  

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // set color on launch
        changeColor()
    }
    
    @IBAction func changeColor() {
        
        let red = CGFloat(self.redSlider.value / 256)
        let blue = CGFloat(self.blueSlider.value / 256)
        let green = CGFloat(self.greenSlider.value / 256)
        
        
        colorViewer.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        setColorLabels()
    }
    
    func setColorLabels() {
        let redValue = Int(self.redSlider.value)
        let greenValue = Int(self.greenSlider.value)
        let blueValue = Int(self.blueSlider.value)
        let hexValue = String(format: "%02X%02X%02X", redValue, greenValue, blueValue)
        
        redValueLabel.text = String(redValue)
        greenValueLabel.text = String(greenValue)
        blueValueLabel.text = String(blueValue)
        // String(format: "%02X, %02X, %02X", 12, 121, 255)
        hexValueLabel.text = "#" + hexValue
    }

}

