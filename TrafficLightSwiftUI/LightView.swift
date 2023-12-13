//
//  LightView.swift
//  TrafficLightSwiftUI
//
//  Created by Alexandr Baranov on 13.12.2023.
//

import SwiftUI

struct LightView: View {
    var color: Color
    var isOn: Bool
    
    var body: some View {
        Circle()
            .foregroundColor(isOn ? color : color.opacity(0.15))
            .frame(width: 100)
            .overlay(
                Circle()
                    .stroke(color, lineWidth: 3.0)
            )
            .shadow(color: color.opacity(0.8), radius: 20)
    }
}

#Preview {
    VStack{
    }
}
