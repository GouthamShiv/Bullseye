//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Goutham S on 13/06/22.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength,
                   height: Constants.General.roundedViewLength)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokedColor"),
                                  lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: Constants.General.roundedViewLength,
                   height: Constants.General.roundedViewLength)
            .background(
                Circle().fill(Color("ButtonFilledBGColor"))
            )
        
    }
}

struct RoundedRectTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-0.2)
            .font(.title3)
            .frame(width: Constants.General.roundedRectViewWidth,
                   height: Constants.General.roundedRectViewHeight)
            .foregroundColor(Color("TextColor"))
            .overlay(
                RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
                    .stroke(lineWidth: Constants.General.strokeWidth)
                    .foregroundColor(Color("ButtonStrokedColor"))
            )
    }
}

struct PreviewView: View {
    var body: some View {
        VStack(spacing: 50) {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewStroked(systemName: "list.dash")
            RoundedRectTextView(text: "999")
        }
        VStack(spacing: 50) {
            RoundedImageViewFilled(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
        }
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
