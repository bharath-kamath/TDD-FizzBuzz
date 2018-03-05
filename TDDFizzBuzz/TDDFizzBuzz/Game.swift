//
//  Game.swift
//  TDDFizzBuzz
//
//  Created by Bharath Kamath on 2018-03-03.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import Foundation

class Game {
    
    var score: Int = 0
    var power: Int = 0
    let brain = Brain()
    
    init() {
        setupNewGame()
    }
    
    func setupNewGame() {
        score = 0
        power = 0
    }
    
    func play(move: String) -> Bool {
        if brain.check(number: score+1).elementsEqual(move) {
            score += 1
            return true
        }
        else {
            return false
        }
    }
}
