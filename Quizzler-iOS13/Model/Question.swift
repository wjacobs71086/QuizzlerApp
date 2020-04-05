//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Wesley Jacobs on 4/5/20.
//

import Foundation


struct Question {
    let text: String
    let answers: [String]
    let correct: String

    init(q: String, a: [String], correctAnsw: String){
        text = q
        answers = a
        correct = correctAnsw
    }
}
