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
        100 - abs(sliderValue - target)
    }
    
    mutating func startNewRound(points: Int) -> Void {
        self.score += points
        round += 1
        target = Int.random(in: 1...100)
    }
}
