//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Александр Соболев on 14.06.2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var answers: [Answer]!
    
    //MARK: - Background color change
      private let firstColor = UIColor(
          red: 120/255,
          green: 200/255,
          blue: 180/255,
          alpha: 1)
      private let secondColor = UIColor(
          red: 160/255,
          green: 150/255,
          blue: 200/255,
          alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
        updateResult()
    }
    
    private func updateResult() {
        
        var mostAnswersWithAnimals: [Animal: Int] = [:]
        let animals = answers.map { $0.animal }
        
        for animal in animals {
            if let animalTypeScore = mostAnswersWithAnimals[animal] {
                mostAnswersWithAnimals.updateValue(animalTypeScore + 1, forKey: animal)
            } else {
                mostAnswersWithAnimals[animal] = 1
            }
        }
        
        let countOfAnimals = mostAnswersWithAnimals.sorted { $0.value > $1.value }
        guard let mainVersionAnimal = countOfAnimals.first?.key else { return }
        
        updateUI(with: mainVersionAnimal)
    }
    
    private func updateUI(with animal: Animal) {
        animalLabel.text = "Вы - \(animal.rawValue)!"
        descriptionLabel.text = animal.definition
    }
}
