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
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions")
            BigNumberText(text: "999")
        }
    }
}
