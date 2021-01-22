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
    
    init(from quizDetailBody: QuizDetailBody) {
        let correctChoice = Choice(word: quizDetailBody.option[quizDetailBody.correct % 2], isCorrect: true)
        let remainingOption = quizDetailBody.option
            .filter { $0 != correctChoice.word }
            .map { Choice(word: $0, isCorrect: false)}
        let choices = quizDetailBody.quiz.map { Choice(word: $0, isCorrect: false) }
        
        self.choices = choices
            .appending(correctChoice)
            .appending(withContent: remainingOption)
            .shuffled()
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
