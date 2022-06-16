//
//  ControlsView.swift
//  Bullseye
//
//  Created by Goutham S on 13/06/22.
//

import SwiftUI

struct ButtonView: View {
    @Binding var isAlertVisible: Bool

    var body: some View {
        Button(action: {
            withAnimation {
                isAlertVisible = true
            }
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
        .cornerRadius(Constants.General.roundRectCornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
                .strokeBorder(Color.white, lineWidth: Constants.General.strokeWidth)
        )
    }
}

struct ButtonViewPreviews: PreviewProvider {
    static var previews: some View {
        
        ButtonView(isAlertVisible: .constant(false))
        
        ButtonView(isAlertVisible: .constant(false))
            .preferredColorScheme(.dark)
    }
}
