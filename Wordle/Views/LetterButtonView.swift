//
//  LetterButtonView.swift
//  Wordle
//
//  Created by Artem Paliutin on 07/03/2022.
//

import SwiftUI

struct LetterButtonView: View {
    
    @EnvironmentObject var vm: WordleViewModel
    var letter: String
    
    var body: some View {
        Button {
            vm.addTooCurrentWord(letter)
        } label: {
            Text(letter)
                .fontWeight(.heavy)
                .frame(width: 30, height: 45)
                .background(vm.keyColors[letter])
                .foregroundColor(.primary)
                
                
                
        }
        .buttonStyle(.plain)

    }
}










struct LetterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LetterButtonView(letter: "L")
            .environmentObject(WordleViewModel())
    }
}
