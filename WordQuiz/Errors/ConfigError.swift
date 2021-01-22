//
//  ConfigError.swift
//  WordQuiz
//
//  Created by Pakanon Pantisawat on 21/1/2564 BE.
//

import Foundation

enum ConfigError: Error {
    case fileNotFound
    case parse
    case keyError(key: String)
}
