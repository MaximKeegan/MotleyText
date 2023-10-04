//
//  ContentView.swift
//  MotleyText
//
//  Created by Maxim Keegan on 04.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue: Double = 300
    
    var body: some View {
        VStack {
            Rectangle()
                    .stroke(Color.red, lineWidth: 1)
                    .frame(width: CGFloat(sliderValue), height: 300)
                    .overlay(Group {
                        Text("Марафон")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 25)) +
                        Text(" по SwiftUI")
                            .font(.system(size: 25))
                             +
                        Text(" «Отцовский пинок»")
                            .foregroundColor(Color.blue)
                            .font(.system(size: 30))
                            
                    })
            Slider(
                value: $sliderValue,
                in: 100...300,
                step: 1
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
