//
//  ContentView.swift
//  Bullseye
//
//  Created by Goutham S on 12/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAlertVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
            VStack {
                InstructionsView(game: $game)
                    .padding(.bottom, isAlertVisible ? 0 : 100)
                if isAlertVisible {
                    PointsView(game: $game, sliderValue: $sliderValue, isAlertVisible: $isAlertVisible)
                        .transition(.scale)
                } else {
                    ButtonView(isAlertVisible: $isAlertVisible)
                        .transition(.scale)
                }
            }
            if !isAlertVisible {
                SliderView(sliderValue: $sliderValue)
                    .transition(.scale)
            }
        }
    }
}

struct InstructionsView: View {
    @Binding var game: Game

    var body: some View {
        VStack {
            InstructionText(text: "Put the bullseye as close as you can to", iconText: "🎯🎯🎯")
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)

            BigNumberText(text: String(game.target))
        }
    }
}

struct SliderView: View {
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            SliderLabelView(value: "1")
                .padding(.leading, 2)
            Slider(value: $sliderValue, in: 1.0...100.0)
            SliderLabelView(value: "100")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
            
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        
        ContentView()
            .preferredColorScheme(.dark)
            
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
