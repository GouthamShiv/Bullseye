//
//  TestView.swift
//  Bullseye
//
//  Created by Goutham S on 13/06/22.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        VStack {
            Circle()
                .strokeBorder(Color.blue, lineWidth: 20)
                .frame(width: 200, height: 100)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.accentColor)
                .frame(width: 200, height: 100)
            
            Capsule()
                .fill(Color.cyan)
                .frame(width: 200, height: 100)
            
            Ellipse()
                .fill(Color.white)
                .frame(width: 200, height: 100)
        }
        .background(Color.black)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
