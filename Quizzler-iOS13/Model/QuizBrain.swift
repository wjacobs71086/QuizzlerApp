//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Wesley Jacobs on 4/5/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

// This doesn't need to be initilized because we are giving it default values in the struct. We also set it to a let because we never intend to change the questions after creation or during run.
struct QuizBrain {
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnsw: "Skin"),
               Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnsw: "100"),
               Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnsw: "Greenwich Mean Time"),
               Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnsw: "Chapeau"),
               Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnsw: "Watch"),
               Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnsw: "Adiós"),
               Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnsw: "Orange"),
               Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnsw: "Rum"),
               Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnsw: "Gorilla"),
               Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnsw: "Australia")

    ]
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer:  String) -> Bool{
        if userAnswer == quiz[questionNumber].correct {
            // user got it correct
            score += 1
            return true
        } else {
            // user got it wrong
            return false
        }
    }
    
    func getQuestionsText() -> String {
        // return the text for the question
        return quiz[questionNumber].text
    }
    
    func getAnswersText() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        // return the value of what the progress bar shouls be at
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion(){
        if questionNumber == (quiz.count - 1) {
            questionNumber = 0
            score = 0
        } else {
            questionNumber += 1
        }
    }

}



