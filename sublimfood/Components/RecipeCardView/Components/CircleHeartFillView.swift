//
//  CircleHeartFillView.swift
//  sublimfood
//
//  Created by Sourinda Sivilay on 26/06/2024.
//

import SwiftUI

struct CircleHeartFillView: View {
    var heartSize: Double = 20
    var circleSize: Double = 40
    var isHeartFilled: Bool = false
    
    var heartIcon: String { isHeartFilled ? "heart.fill" : "heart"
    }
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.white)
                .frame(width: circleSize, height: circleSize)
            
            Image(systemName: heartIcon)
                .resizable()
                .foregroundStyle(.red)
                .frame(width: heartSize, height: heartSize)
        }
        .padding(25)
    }
}

#Preview {
    CircleHeartFillView()
}
