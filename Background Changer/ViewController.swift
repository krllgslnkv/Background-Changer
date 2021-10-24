//
//  ViewController.swift
//  Background Changer
//
//  Created by Kirill Guselnikov on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorViewChanger: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorViewChanger.layer.cornerRadius = 15
        
        redSlider.tintColor = UIColor.red
        greenSlider.tintColor = UIColor.green
        blueSlider.tintColor = UIColor.blue
        
    }

    func changeColor() {
        colorViewChanger.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    @IBAction func redSliderAction(_ sender: Any) {
        redValue.text = String(round(redSlider.value * 100) / 100)
        changeColor()
    }
    @IBAction func greenSliderAction(_ sender: Any) {
        greenValue.text = String(round(greenSlider.value * 100) / 100)
        changeColor()
    }
    
    @IBAction func blueSliderAction(_ sender: Any) {
        blueValue.text = String(round(blueSlider.value * 100) / 100)
        changeColor()
    }
}

//разобраться с констрейнтами 
//убрать нули в значениях слайдера - done
