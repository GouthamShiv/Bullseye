//
//  TextViews.swift
//  Bullseye
//
//  Created by Goutham S on 13/06/22.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        VStack {
            Text("🎯🎯🎯")
                .font(.largeTitle)
                .fontWeight(.black)
            .padding(.bottom)
            
            Text(text.uppercased())
                .bold()
                .kerning(2)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .padding(.bottom)
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

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions")
            BigNumberText(text: "999")
            NumberView(title: "Name", text: "Jack")
            TextView(text: "Score")
        }
    }
}
