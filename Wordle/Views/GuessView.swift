//
//  GuessView.swift
//  Wordle
//
//  Created by Artem Paliutin on 07/03/2022.
//

import SwiftUI

struct GuessView: View {
    
    let guess: Guess
    
    var body: some View {
        HStack {
            ForEach(0...4, id: \.self) { index in
                Text(guess.guessLetters[index])
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                    .background(Color.themeColor.background)
                    .font(.largeTitle)
                    .border(Color.secondary)
            }
        }
    }
}










struct GuessView_Previews: PreviewProvider {
    static var previews: some View {
        GuessView(guess: Guess(index: 0))
    }
}
