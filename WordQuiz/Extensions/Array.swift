//
//  Array.swift
//  WordQuiz
//
//  Created by Pakanon Pantisawat on 22/1/2564 BE.
//

import Foundation

extension Array {
    func appending(_ element: Element) -> Array {
        return self + [element]
    }
    
    func appending(withContent elements: [Element]) -> Array {
        return elements.reduce(self) { $0.appending($1) }
    }
}
