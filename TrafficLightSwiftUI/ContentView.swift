//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Alexandr Baranov on 13.12.2023.
//

import SwiftUI

enum CurrentLight {
    case start
    case red
    case yellow
    case green
}

struct ContentView: View {
    @State private var currentLight = CurrentLight.start
    @State private var buttonLabel = "START"
    
    var body: some View {
        VStack {
            LightView(color: .red, isOn: currentLight == .red)
                .padding(24)
            LightView(color: .yellow, isOn: currentLight == .yellow)
                .padding(24)
            LightView(color: .green, isOn: currentLight == .green)
                .padding(24)
            
            Spacer()
            
            Button(action: {
                switch currentLight {
                case.start:
                    buttonLabel = "Next"
                    currentLight = CurrentLight.red
                case .red:
                    currentLight = .yellow
                case .yellow:
                    currentLight = .green
                case .green:
                    currentLight = .red
                }
            }) {
                Text(buttonLabel)
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(6)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
