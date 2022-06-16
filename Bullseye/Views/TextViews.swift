//
//  TextViews.swift
//  Bullseye
//
//  Created by Goutham S on 13/06/22.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var iconText: String
    var body: some View {
        VStack {
            EmojiView(iconText: iconText)
            Text(text.uppercased())
                .bold()
                .kerning(2)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .foregroundColor(Color("TextColor"))
        }
    }
}

struct BigNumberText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-1.0)
            .fontWeight(.black)
            .font(.largeTitle)
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderLabelView: View {
    var value: String
    
    var body: some View {
        Text(value)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35.0)
    }
}

struct NumberView: View {
    var title: String
    var text: String
    
    var body: some View {
        VStack(spacing: 5) {
            TextView(text: title.uppercased())
            RoundedRectTextView(text: text)
        }
    }
}

struct TextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .kerning(1.5)
            .font(.caption)
    }
}

struct BodyText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
    }
}

struct ButtonText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                Color.accentColor
            )
            .foregroundColor(Color.white)
            .cornerRadius(12)
    }
}

struct EmojiView: View {
    var iconText: String
    
    var body: some View {
        Text(iconText)
            .font(.largeTitle)
            .fontWeight(.black)
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "The Slider's value is", iconText: "")
            BigNumberText(text: "999")
//            NumberView(title: "Name", text: "Jack")
//            TextView(text: "Score")
            BodyText(text: "You scored 200 Points\n🎉🎉🎉")
            ButtonText(text: "Start New Round")
        }
        .padding()
    }
}
