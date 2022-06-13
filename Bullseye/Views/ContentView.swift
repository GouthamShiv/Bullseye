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
            Color("BackgroundColor").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("🎯🎯🎯")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding(.bottom)
                
                Text("Put the bullseye as close as you can to".uppercased())
                    .bold()
                    .kerning(2)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
                    .padding(.bottom)
                    .foregroundColor(Color("TextColor"))

                Text(String(game.target))
                    .kerning(-1.0)
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .foregroundColor(Color("TextColor"))
                
                HStack {
                    Text("1")
                        .bold()
                        .foregroundColor(Color("TextColor"))
                    
                    Slider(value: $sliderValue, in: 1.0...100.0)
                    
                    Text("100")
                        .bold()
                        .foregroundColor(Color("TextColor"))
                }
                .padding()
                
                Button(action: {
                    isAlertVisible = true
                }) {
                    Text("hit me".uppercased())
                    .bold()
                    .font(.title3)
                }
                .padding(20.0)
                .background(ZStack {
                    Color("ButtonColor")
                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                })
                .foregroundColor(Color.white)
                .cornerRadius(21)
                .alert(
                    "Your Target: \(game.target)!",
                    isPresented: $isAlertVisible,
                    actions: { Button("Awesome") {} },
                    message: {
                        let roundedInt = Int(sliderValue.rounded())
                        Text("The slider's value is \(roundedInt)!\n" +
                             "You scored \(game.points(sliderValue: roundedInt)) points this round.")
                    }
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        
        ContentView()
            .preferredColorScheme(.dark)
            
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
