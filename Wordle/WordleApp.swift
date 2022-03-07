//
//  WordleApp.swift
//  Wordle
//
//  Created by Artem Paliutin on 07/03/2022.
//

import SwiftUI

@main
struct WordleApp: App {
    
    @StateObject var vm = WordleViewModel()
    
    var body: some Scene {
        WindowGroup {
            GameView()
                .environmentObject(vm)
        }
    }
}
