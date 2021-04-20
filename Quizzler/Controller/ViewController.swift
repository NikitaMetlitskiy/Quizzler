//
//  ViewController.swift
//  Quizzler
//
//  Created by Mac on 20.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    
    var quizBrain = QuizBrain()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLable()
    }

    @IBAction func answersButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! // True or False
        
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
       Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateLable), userInfo: nil, repeats: false)
       
    }
    @objc func updateLable() {
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
    }
    
}

