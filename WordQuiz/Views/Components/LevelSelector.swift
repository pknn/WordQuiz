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
    
    func changeLevel(with n: Int, from s: Int, to e: Int) {
        level += n
        if level < s {
            level = e
        } else if level > e {
            level = s
        }
    }
    
    var body: some View {
        ZStack {
            HStack(alignment: .center) {
                ArrowButton(arrowDirection: .left) {
                    direction = .backward
                    changeLevel(with: -1, from: 1, to: 10)                }
                
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
                    changeLevel(with: 1, from: 1, to: 10)
                }
            }
        }
    }
}

struct LevelSelector_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelector(level: .constant(1))
    }
}
