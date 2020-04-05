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
        ["Critical Role is a DnD Podcast", "True"],
        ["Travis has played both a Barbaian and a Warlock", "True"],
        ["Alura is the Queen we all want", "True"]
    ]
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUi()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        
        userAnswer == quiz[questionNumber][1] ? print("correct") : print("InCorrect")
        
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
        questionLabel.text = quiz[questionNumber][0]
    }
    
}

