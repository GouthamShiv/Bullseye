//
//  Game.swift
//  Bullseye
//
//  Created by Goutham S on 12/06/22.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        let difference = abs(sliderValue - target)
        var bonus = 0
        
        if (sliderValue == target) {
            bonus = 100
        } else if (difference <= 2) {
            bonus = 50
        } else {
            bonus = 0
        }
        
        return 100 - difference + bonus
    }
    
    mutating func startNewRound(points: Int) -> Void {
        score += points
        round += 1
        target = Int.random(in: 1...100)
    }
    
    mutating func restart() -> Void {
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
}
