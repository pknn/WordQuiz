//
//  LevelSelector.swift
//  WordQuiz
//
//  Created by Pakanon Pantisawat on 23/1/2564 BE.
//

import SwiftUI

fileprivate enum MoveDirection {
    case forward
    case backward
}

struct LevelSelector: View {
    @Binding var level: Int
    @State private var direction: MoveDirection = .forward
    var body: some View {
        HStack(alignment: .center) {
            ArrowButton(arrowDirection: .left) {
                direction = .backward
                level = level - 1
            }
            
            Text("\(level)")
                .font(.system(size: 80))
                .frame(width: 100, height: 100, alignment: .center)
                .padding()
                .id("LevelIdentifier_\(level)")
                .transition(.asymmetric(
                    insertion: .move(edge: direction == .forward ? .trailing : .leading),
                    removal: .move(edge: direction == .forward ? .leading : .trailing)
                ))
                .animation(.easeInOut)
            
            ArrowButton(arrowDirection: .right) {
                direction = .forward
                level = level + 1
            }
        }
    }
}

struct LevelSelector_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelector(level: .constant(1))
    }
}
