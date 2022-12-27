//
//  Color.swift
//  SliderRGB
//
//  Created by comp on 30.11.22.
//

import UIKit


class Color {
    private var red:CGFloat
    private var green:CGFloat
    private var blue:CGFloat
    
    init(red: Float, green: Float, blue: Float) {
        self.red = CGFloat(red)
        self.green = CGFloat(green)
        self.blue = CGFloat(blue)
    }

    func setRed (red: Float) {
        self.red = CGFloat(red)
    }
    func setGreen (green: Float) {
        self.green = CGFloat(green)
    }
    func setBlue (blue: Float) {
        self.blue = CGFloat(blue)
    }
    

    func getColor () -> UIColor {
        let color = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
        return color
    }
    
    func getTextFieldRed () -> String {
        let stringRed = "\(Int(round(red)))"
        return stringRed
    }
    func getTextFieldGreen () -> String {
        let stringGreen = "\(Int(round(green)))"
        return stringGreen
    }
    func getTextFieldBlue () -> String {
        let stringBlue = "\(Int(round(blue)))"
        return stringBlue
    }
}



