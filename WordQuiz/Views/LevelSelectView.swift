//
//  LevelSelectView.swift
//  WordQuiz
//
//  Created by Pakanon Pantisawat on 22/1/2564 BE.
//

import SwiftUI

struct LevelSelectView: View {
    @State var level = 1
    
    func changeLevel(with n: Int) {
        level += n
        if level < 1 {
            level = 10
        } else if level > 10 {
            level = 1
        }
    }
    
    var body: some View {
        VStack {
            LevelSelector(level: $level)
        }
        .navigationBarHidden(true)
    }
}

struct LevelSelectView_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelectView()
    }
}
