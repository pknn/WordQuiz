//
//  Config.swift
//  WordQuiz
//
//  Created by Pakanon Pantisawat on 21/1/2564 BE.
//

import Foundation

struct Config {
    static var apiConfig: APIConfig {
        loadAPIConfig()
    }
    
    private static func loadAPIConfig() -> APIConfig {
        guard let filePath = Bundle.main.path(forResource: "WordQuizApiInfo", ofType: "plist"),
              let xml = FileManager.default.contents(atPath: filePath) else {
            fatalError(ConfigError.fileNotFound.localizedDescription)
        }
        guard let config = try? PropertyListDecoder().decode(APIConfig.self, from: xml) else {
            fatalError(ConfigError.parse.localizedDescription)
        }
        
        return config
    }
    
}

struct APIConfig: Codable {
    let headers: [String: String]
    let apiEndpoint: String
}
