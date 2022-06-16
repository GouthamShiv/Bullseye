//
//  ControlsView.swift
//  Bullseye
//
//  Created by Goutham S on 13/06/22.
//

import SwiftUI

struct ButtonView: View {
    @Binding var isAlertVisible: Bool
//    @Binding var game: Game
//    @Binding var sliderValue: Double

    var body: some View {
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
        .overlay(
            RoundedRectangle(cornerRadius: 21)
                .strokeBorder(Color.white, lineWidth: 2.0)
        )
//        .alert(
//            "Your Target: \(game.target)!",
//            isPresented: $isAlertVisible,
//            actions: {
//                Button("Awesome!") {
//                    game.startNewRound(points: game.points(sliderValue: Int(sliderValue.rounded())))
//                }
//            },
//            message: {
//                let roundedValue = Int(sliderValue.rounded())
//                let points = game.points(sliderValue: roundedValue)
//                Text("You've hit \(roundedValue)!\n" +
//                     "You scored \(points) points this round.")
//            }
//        )
    }
}

struct ButtonViewPreviews: PreviewProvider {
    static var previews: some View {
//        ButtonView(isAlertVisible: .constant(true), game: .constant(Game()), sliderValue: .constant(50.0))
        
        ButtonView(isAlertVisible: .constant(false))
        
        ButtonView(isAlertVisible: .constant(false))
            .preferredColorScheme(.dark)
    }
}
