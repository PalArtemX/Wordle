//
//  Color.swift
//  Wordle
//
//  Created by Artem Paliutin on 07/03/2022.
//

import SwiftUI


struct ThemeColor {
    let wrong = Color("wrong")
    let misplaced = Color("misplaced")
    let correct = Color("correct")
    let unused = Color("unused")
    let background = Color("background")
}

extension Color {
    static var themeColor = ThemeColor()
}


