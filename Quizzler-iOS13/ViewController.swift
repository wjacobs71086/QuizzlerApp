//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        Question(text: "Critical Role is a DnD Podcast", answer: "True"),
        Question(text: "Travis has played both a Barbaian and a Warlock", answer: "True"),
        Question(text: "Alura is the Queen we all want", answer: "True"),
    ]
    
    
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUi()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        // gets the question object at the position of questionNumber and then the answer property
        userAnswer == quiz[questionNumber].answer ? print("Correct") : print("InCorrect")
        
        if questionNumber == (quiz.count - 1) {
            questionNumber = 0
        } else {
            questionNumber += 1
        }
        
        //questionNumber == quiz.count ? questionNumber = 0 : questionNumber += 1
        //questionNumber += 1
        updateUi()
    }
    
    func updateUi(){
        questionLabel.text = quiz[questionNumber].text
    }
    
}

