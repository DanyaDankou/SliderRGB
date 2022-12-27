//
//  ViewController2.swift
//  SliderRGB
//
//  Created by comp on 30.11.22.
//

import UIKit



class ViewController2: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redTF: UITextField!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenTF: UITextField!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueTF: UITextField!
    
    @IBOutlet weak var opacitySlider: UISlider!
    @IBOutlet weak var opacityTF: UITextField!
    
    @IBOutlet weak var hexTF: UITextField!
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var doneButton: UIButton!
    
    var delegates: CompareColor?
    var color: Color!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        color = Color(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
        colorView.backgroundColor = color.getColor()
        redTF.text = color.getTextFieldRed()
        greenTF.text = color.getTextFieldGreen()
        blueTF.text = color.getTextFieldBlue()
    }
    
    @IBAction func rgbSliderChanged(_ sender: UISlider) {
        if (sender.tag == 1) {
            color.setRed(red: sender.value)
            redTF.text = color.getTextFieldRed()
            colorView.backgroundColor = color.getColor()
        } else if (sender.tag == 2) {
            color.setGreen(green: sender.value)
            greenTF.text = color.getTextFieldGreen()
            colorView.backgroundColor = color.getColor()
        } else if (sender.tag == 3) {
            color.setBlue(blue: sender.value)
            blueTF.text = color.getTextFieldBlue()
            colorView.backgroundColor = color.getColor()
        }
    }
    @IBAction func saveColor(_ sender: UIButton) {
        delegates?.updateColor(color: color.getColor())
        navigationController?.popToRootViewController(animated: true)
    }
}
extension ViewController2: CompareColor {
    func updateColor(color: UIColor?) {
        colorView.backgroundColor = color
    }
}
    




    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


