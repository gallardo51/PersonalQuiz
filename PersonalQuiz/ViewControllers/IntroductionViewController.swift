//
//  ViewController.swift
//  PersonalQuiz
//
//  Created by Александр Соболев on 13.06.2022.
//

import UIKit

class IntroductionViewController: UIViewController {

    @IBAction func unwind(segue: UIStoryboardSegue) {}
    
  //MARK: - Background color change
    private let firstColor = UIColor(
        red: 130/255,
        green: 100/255,
        blue: 210/255,
        alpha: 1)
    private let secondColor = UIColor(
        red: 150/255,
        green: 250/255,
        blue: 170/255,
        alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
        
    }
}
//MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}


