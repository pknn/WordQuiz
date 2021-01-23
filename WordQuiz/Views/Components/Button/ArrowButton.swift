//
//  ArrowButton.swift
//  WordQuiz
//
//  Created by Pakanon Pantisawat on 23/1/2564 BE.
//

import SwiftUI

enum ArrowDirection: String {
    case left = "left"
    case right = "right"
}

struct ArrowButton: View {
    let arrowDirection: ArrowDirection
    let action: () -> Void
    var body: some View {
        let arrowSymbol = Image(systemName: "chevron.\(arrowDirection).circle")
        Button(action: action) {
            arrowSymbol
        }
        .padding(5)
        .background(Color.white)
        .cornerRadius(5)
        .shadow(color: .init(.sRGB, white: 0.1, opacity: 0.2), radius: 3, x: 2, y: 2)
        .shadow(color: .init(.sRGB, white: 1.0, opacity: 0.2), radius: 3, x: -2, y: -2)
    }
}

struct ArrowButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ArrowButton(arrowDirection: .left, action: {})
            ArrowButton(arrowDirection: .right, action: {})
        }
        .previewLayout(.fixed(width: 300, height: 150))
    }
}
