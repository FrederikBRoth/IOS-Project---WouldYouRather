//
//  QuestionHandler.swift
//  WouldYouRather - IOS Project
//
//  Created by user186455 on 2/22/21.
//

import Foundation

class QuestionHandler {
    var questions: [Question]
    init(_ questions: [Question]) {
        self.questions = questions
    }
    
    func getRandomQuestion() -> Question? {
        return questions.randomElement()
    }
}
