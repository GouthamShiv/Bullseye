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
        if sliderValue > self.target {
            difference = sliderValue - self.target
        } else if self.target > sliderValue {
            difference = self.target - sliderValue
        }
        return 100 - difference
    }
}
