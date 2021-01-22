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
            .padding([.leading, .trailing], /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .background(Color.yellow)
            .cornerRadius(5)
            .shadow(color: .gray, radius: 3, x: 0.0, y: 0.0)
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton()
    }
}
