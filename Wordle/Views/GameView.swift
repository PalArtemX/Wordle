//
//  GameView.swift
//  Wordle
//
//  Created by Artem Paliutin on 07/03/2022.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        NavigationView {
            Text("Hello, World!")
                
            
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
    }
}
