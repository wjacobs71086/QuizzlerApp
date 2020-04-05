//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Wesley Jacobs on 4/5/20.
//

import Foundation


struct Question {
    let text: String
    let answer: String

    init(q: String, a: String){
        text = q
        answer = a
    }
}
