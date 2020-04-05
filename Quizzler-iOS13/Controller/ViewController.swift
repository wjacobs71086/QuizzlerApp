//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     var timer = Timer()
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var aSelection: UIButton!
    @IBOutlet weak var bSelection: UIButton!
    @IBOutlet weak var cSelection: UIButton!
    
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUi()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if  userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()

        // Beacuse it only runs once, we are not assigning it to a variable that we could then invalidate
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUi), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUi(){
        questionLabel.text = quizBrain.getQuestionsText()
        aSelection.setTitle(quizBrain.getAnswersText()[0], for: .normal)
        bSelection.setTitle(quizBrain.getAnswersText()[1], for: .normal)
        cSelection.setTitle(quizBrain.getAnswersText()[2], for: .normal)
        // reset color change
        aSelection.backgroundColor = UIColor.clear
        bSelection.backgroundColor = UIColor.clear
        cSelection.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.score)"
    }
    
}

