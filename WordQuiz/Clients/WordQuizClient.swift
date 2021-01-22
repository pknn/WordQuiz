//
//  WordQuiz.swift
//  WordQuiz
//
//  Created by Pakanon Pantisawat on 21/1/2564 BE.
//

import Foundation

struct WordQuizClient {
    static func get(level: Int) -> Result<Data, Error> {
        let apiEndpoint = Config.endpoint
        
        var urlComponents = URLComponents(string: apiEndpoint)
        urlComponents?.queryItems = [
            URLQueryItem(name: "level", value: "\(level)")
        ]
        
        guard let url = urlComponents?.url else {
            return .failure(ClientError.request)
        }
        
        var urlRequest = URLRequest(url: url)
        Config.headers.forEach { key, value in
            urlRequest.addValue(value, forHTTPHeaderField: key)
        }
        
        var result: Result<Data, Error>!
        let semaphore = DispatchSemaphore(value: 0)
        
        URLSession.shared.dataTask(with: urlRequest) { data, _, _ in
            if let data = data {
                result = .success(data)
            } else {
                result = .failure(ClientError.server)
            }
        }.resume()
        
        _ = semaphore.wait(timeout: .distantFuture)
        
        return result
    }
}
