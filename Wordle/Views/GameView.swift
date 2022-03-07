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
                ForEach(0...5, id: \.self) { index in
                    GuessView(guess: vm.guesses[index])
                }
            }
            .frame(width: Global.boardWidth, height: 6 * Global.boardWidth / 5)
                
            
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










struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .environmentObject(WordleViewModel())
    }
}
