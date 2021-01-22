//
//  ClientTest.swift
//  WordQuizTests
//
//  Created by Pakanon Pantisawat on 21/1/2564 BE.
//

import XCTest
@testable import WordQuiz

class ClienTest: XCTestCase {
    func testApiCall() throws {
        let expectation = self.expectation(description: "API Call")
        var responseBody: WordQuizAPIResponseBody?
        var apiError: Error?
        
        let result = WordQuizClient.get(level: 10)
            .flatMap { WordQuizAPIResponseBody.from(jsonData: $0) }
        
        DispatchQueue.global(qos: .userInitiated).async {
            switch result {
            case .success(let response):
                responseBody = response
            case .failure(let error):
                apiError = error
            }
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 20, handler: nil)
        
        XCTAssertNotNil(responseBody)
        XCTAssertNil(apiError)
        
        let unwrapped = try XCTUnwrap(responseBody)
        XCTAssertEqual(unwrapped.quizlist.count, 10)
    }
}
