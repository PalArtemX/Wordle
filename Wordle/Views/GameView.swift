//
//  GameView.swift
//  Wordle
//
//  Created by Artem Paliutin on 07/03/2022.
//

import SwiftUI

struct GameView: View {
    
    @EnvironmentObject var vm: WordleViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                VStack {
                    ForEach(0...5, id: \.self) { index in
                        GuessView(guess: $vm.guesses[index])
                    }
    //                GuessView(guess: $vm.guesses[0])
    //                GuessView(guess: $vm.guesses[1])
    //                GuessView(guess: $vm.guesses[2])
    //                GuessView(guess: $vm.guesses[3])
    //                GuessView(guess: $vm.guesses[4])
    //                GuessView(guess: $vm.guesses[5])
                }
                
                .frame(width: Global.boardWidth, height: 6 * Global.boardWidth / 5)
                Spacer()
                KeyboardView()
                    .scaleEffect(Global.keyboardScale)
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button {
                                //
                            } label: {
                                Image(systemName: "questionmark.circle")
                                    .symbolRenderingMode(.hierarchical)
                            }
                        }
                        ToolbarItem(placement: .principal) {
                            Text("WORDLE")
                                .font(.headline)

                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            HStack {
                                Button {
                                    //
                                } label: {
                                    Image(systemName: "chart.bar")
                                }
                                
                                Button {
                                    //
                                } label: {
                                    Image(systemName: "gearshape")
                                }

                            }
                            .symbolRenderingMode(.hierarchical)
                        }
                }
            }
        }
    }
}










struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .environmentObject(WordleViewModel())
    }
}
