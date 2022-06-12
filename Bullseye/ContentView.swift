//
//  ContentView.swift
//  Bullseye
//
//  Created by Goutham S on 12/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAlertVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)

            Text("89")
                .kerning(-1.0)
                .fontWeight(.black)
                .font(.largeTitle)
            
            HStack {
                Text("1")
                    .bold()
                
                Slider(value: .constant(50), in: 1.0...100.0)
                
                Text("100")
                    .bold()
            }
            
            Button(action: {
                print("Hello SwiftUI")
                self.isAlertVisible = true
            }) {
                Text("HIT ME")
            }
            .alert("Hello There!", isPresented: $isAlertVisible) {
                Button("Awesome") {}
            } message: {
                Text("This is my first pop-up")
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
