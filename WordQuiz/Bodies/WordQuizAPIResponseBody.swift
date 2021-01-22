//
//  WordQuizAPIResponseBody.swift
//  WordQuiz
//
//  Created by Pakanon Pantisawat on 21/1/2564 BE.
//

import Foundation

struct WordQuizAPIResponseBody: Hashable, Codable {
    let quizlist: [QuizDetailBody]
    
    static func from(jsonData data: Data) -> Result<WordQuizAPIResponseBody, Error> {
        do {
            let wordQuizAPIResponseBody: WordQuizAPIResponseBody = try JSONDecoder().decode(WordQuizAPIResponseBody.self, from: data)
            return .success(wordQuizAPIResponseBody)
        } catch {
            return .failure(ResponseError.parse)
        }
    }
}

struct QuizDetailBody: Hashable, Codable {
    let correct: Int
    let option: [String]
    let quiz: [String]
}
