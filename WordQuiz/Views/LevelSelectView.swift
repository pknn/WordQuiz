//
//  LevelSelectView.swift
//  WordQuiz
//
//  Created by Pakanon Pantisawat on 22/1/2564 BE.
//

import SwiftUI

struct LevelSelectView: View {
    @State var level = 1
    
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
