//
//  Game.swift
//  Bullseye
//
//  Created by Goutham S on 12/06/22.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        var difference: Int = 0
        difference = sliderValue - self.target
        if difference < -1 {
            difference *= -1
        }
        return 100 - difference
    }
}
