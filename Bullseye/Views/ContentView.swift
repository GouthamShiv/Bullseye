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
        VStack {
            Text("🎯🎯🎯")
                .font(.largeTitle)
                .fontWeight(.black)
                .padding(.bottom)
            
            Text("PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .padding(.bottom)

            Text(String(game.target))
                .kerning(-1.0)
                .fontWeight(.black)
                .font(.largeTitle)
            
            HStack {
                Text("1")
                    .bold()
                
                Slider(value: $sliderValue, in: 1.0...100.0)
                
                Text("100")
                    .bold()
            }
            
            Button(action: {
                isAlertVisible = true
            }) {
                Text("HIT ME")
            }
            .alert("Your Target: \(game.target)!", isPresented: $isAlertVisible) {
                Button("Awesome") {}
            } message: {
                let roundedInt = Int(sliderValue.rounded())
                Text("The slider's value is \(roundedInt)!\n" +
                     "You scored \(game.points(sliderValue: roundedInt)) points this round.")
            }
            .padding(.top)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
