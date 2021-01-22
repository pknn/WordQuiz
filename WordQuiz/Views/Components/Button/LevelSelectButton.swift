//
//  LevelSelectButton.swift
//  WordQuiz
//
//  Created by Pakanon Pantisawat on 22/1/2564 BE.
//

import SwiftUI

struct LevelSelectButton: View {
    let level: Int
    var body: some View {
        NavigationLink(destination: Text("Level: \(level)")) {
            Text("Level \(level)")
        }
        .padding(30)
        .padding([.leading, .trailing], 10)
        .foregroundColor(.white)
        .background(Color.yellow)
        .cornerRadius(5)
        .shadow(color: .gray, radius: 3, x: 0.0, y: 0.0)
    }
}

struct LevelSelectButton_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelectButton(level: 1)
    }
}
