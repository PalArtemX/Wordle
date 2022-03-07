//
//  WordleViewModel.swift
//  Wordle
//
//  Created by Artem Paliutin on 07/03/2022.
//

import SwiftUI

class WordleViewModel: ObservableObject {
    @Published var guesses: [Guess] = []
    
    var keyColors = [String:Color]()
    
    init() {
        newGame()
    }
    
    
    // MARK: - FUNCTIONS
    // MARK: - newGame
    func newGame() {
        populateDefaults()
    }
    
    // MARK: - populateDefaults
    func populateDefaults() {
        guesses = []
        for index in 0...5 {
            guesses.append(Guess(index: index))
        }
        
        let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        for char in letters {
            keyColors[String(char)] = .secondary
        }
    }
    
    // MARK: - addTooCurrentWord
    func addTooCurrentWord(_ letter: String) {
        
    }
    
    // MARK: -
    func enterWord() {
        
    }
    
    // MARK: -
    func removeLetterFromCurrent() {
        
    }
}
