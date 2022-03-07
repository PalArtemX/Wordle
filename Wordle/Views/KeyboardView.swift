//
//  KeyboardView.swift
//  Wordle
//
//  Created by Artem Paliutin on 07/03/2022.
//

import SwiftUI

struct KeyboardView: View {
    
    @EnvironmentObject var vm: WordleViewModel
    var topRowArray = "QWERTYUIOP".map { String($0) }
    var secondRowArray = "ASDFGHJKL".map { String($0) }
    var thirdRowArray = "ZXCVBNM".map { String($0) }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(topRowArray, id: \.self) { letter in
                    LetterButtonView(letter: letter)
                }
            }
            
            HStack {
                ForEach(secondRowArray, id: \.self) { letter in
                    LetterButtonView(letter: letter)
                }
            }
            
            HStack {
                // MARK: - Button "Enter"
                Button {
                    //
                } label: {
                    Text("Enter")
                }
                .buttonStyle(.bordered)

                ForEach(thirdRowArray, id: \.self) { letter in
                    LetterButtonView(letter: letter)
                }
                // MARK: - Button "Backspace"
                Button {
                    //
                } label: {
                    Image(systemName: "delete.backward.fill")
                }
                .buttonStyle(.bordered)

            }
        }
    }
}










struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView()
            .environmentObject(WordleViewModel())
            .scaleEffect(Global.keyboardScale)
    }
}
