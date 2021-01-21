//
//  Quiz.swift
//  WordQuiz
//
//  Created by Pakanon Pantisawat on 21/1/2564 BE.
//

import Foundation

struct QuizItem {
    private let choices: [Choice]
    
    init(choices: [Choice]) {
        self.choices = choices
    }
    
    func getChoices() -> [Choice] {
        return self.choices
    }
    
    func choose(with choice: Choice) -> Bool {
        return choice.isCorrect
    }
}

struct Choice {
    let word: String
    let isCorrect: Bool
}
