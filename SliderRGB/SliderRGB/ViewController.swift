//
//  ViewController.swift
//  SliderRGB
//
//  Created by comp on 30.11.22.
//

import UIKit

protocol CompareColor {
    func updateColor (color: UIColor?)
}

class ViewController: UIViewController {

    var colorBack: Color!
    @IBOutlet var viewControllerBack: UIView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func goToVC2(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "ViewController2") as?
                ViewController2 else { return }
        vc.delegates = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension ViewController: CompareColor {
    func updateColor(color: UIColor?) {
        viewControllerBack.backgroundColor = color
    }
}

