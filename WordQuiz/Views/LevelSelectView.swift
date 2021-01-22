//
//  LevelSelectView.swift
//  WordQuiz
//
//  Created by Pakanon Pantisawat on 22/1/2564 BE.
//

import SwiftUI

struct LevelSelectView: View {
    var body: some View {
        let columnLayout = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        LazyVGrid(columns: columnLayout, alignment: .center, spacing: 45) {
            ForEach(1..<11) {
                LevelSelectButton(level: $0)
            }
        }
        .navigationTitle("Level Select")
    }
}

struct LevelSelectView_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelectView()
    }
}
