//
//  MenuView.swift
//  WordQuiz
//
//  Created by Pakanon Pantisawat on 22/1/2564 BE.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Word Quiz")
                    .font(.title)
                PlayButton()
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
