//
//  ContentView.swift
//  Bullseye
//
//  Created by Goutham S on 12/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAlertVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)

            Text(String(game.target))
                .kerning(-1.0)
                .fontWeight(.black)
                .font(.largeTitle)
            
            HStack {
                Text("1")
                    .bold()
                
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                
                Text("100")
                    .bold()
            }
            
            Button(action: {
                self.isAlertVisible = true
            }) {
                Text("HIT ME")
            }
            .alert("Hello There!", isPresented: $isAlertVisible) {
                Button("Awesome") {}
            } message: {
                let roundedInt: Int = Int(self.sliderValue.rounded())
                Text("The slider's value is \(roundedInt)")
            }


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
