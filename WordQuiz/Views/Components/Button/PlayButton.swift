//
//  PlayButton.swift
//  WordQuiz
//
//  Created by Pakanon Pantisawat on 22/1/2564 BE.
//

import SwiftUI

struct PlayButton: View {
    var body: some View {
        NavigationLink(
            destination: LevelSelectView(),
            label: {
                HStack {
                    Image(systemName: "play.fill")
                    Text("Play")
                }
            })
            .padding()
            .foregroundColor(.white)
            .background(Color.yellow)
            .cornerRadius(5)
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton()
    }
}
