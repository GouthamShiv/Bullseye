//
//  TestView.swift
//  Bullseye
//
//  Created by Goutham S on 13/06/22.
//

import SwiftUI

struct TestView: View {
    @State private var wideShapes = true
    
    var body: some View {
        VStack {
            if !wideShapes {
                Circle()
                    .strokeBorder(Color.blue, lineWidth: 20)
                    .frame(width: 200, height: 100)
                    .transition(.opacity)
            }
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.accentColor)
                .frame(width: wideShapes ? 200 : 100, height: 100)
                .animation(.easeInOut, value: wideShapes)
            
            Capsule()
                .fill(Color.cyan)
                .frame(width: wideShapes ? 200 : 100, height: 100)
            
            Ellipse()
                .fill(Color.white)
                .frame(width: wideShapes ? 200 : 100, height: 100)
            
            Button(action: {
                withAnimation {
                    wideShapes.toggle()
                }
            },
            label: {
                Text("Animate!")
            })
        }
        .background(Color.black)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
