//
//  PointsView.swift
//  Bullseye
//
//  Created by Goutham on 16/06/22.
//

import SwiftUI

struct PointsView: View {
    
    @Binding var game: Game
    @Binding var sliderValue: Double
    @Binding var isAlertVisible: Bool
    
    var body: some View {
        VStack (spacing: 10) {
            let roundedValue = Int(sliderValue.rounded())
            let points = game.points(sliderValue: roundedValue)
            InstructionText(text: "You have hit", iconText: "")
            BigNumberText(text: String(Int(sliderValue.rounded())))
            BodyText(text: "You scored \(points) Points\n🎉🎉🎉")
            Button(action: {
                game.startNewRound(points: game.points(sliderValue: Int(sliderValue.rounded())))
                isAlertVisible = false
            }, label: {
                ButtonText(text: "Start New Round")
            })
        }
        .padding()
        .frame(maxWidth: 300)
        .background(Color("BackgroundColor"))
        .cornerRadius(21)
        .shadow(radius: 10, x: 5, y: 5)
    }
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
        PointsView(game: .constant(Game()), sliderValue: .constant(50.0), isAlertVisible: .constant(true))
            .previewInterfaceOrientation(.portrait)
            
        PointsView(game: .constant(Game()), sliderValue: .constant(50.0), isAlertVisible: .constant(true))
            .previewLayout(.fixed(width: 568, height: 320))
        
        PointsView(game: .constant(Game()), sliderValue: .constant(50.0), isAlertVisible: .constant(true))
            .preferredColorScheme(.dark)
            
        PointsView(game: .constant(Game()), sliderValue: .constant(50.0), isAlertVisible: .constant(true))
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
