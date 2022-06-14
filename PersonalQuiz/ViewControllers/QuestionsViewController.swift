//
//  QuestionViewController.swift
//  PersonalQuiz
//
//  Created by Александр Соболев on 14.06.2022.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet var multipleLabel: [UILabel]!
    @IBOutlet var multipleSwitches: [UISwitch]!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet var rangedLabels: [UILabel]!
    @IBOutlet weak var rangedSlider: UISlider!
    
    
    
    private var questions = Question.getQuestions()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
    }
    @IBAction func multipleAnswerButtonPressed() {
    }
    @IBAction func rangedAnswerButtonPressed() {
    }
}
