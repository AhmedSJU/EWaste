//
//  RoundedRectangleButton.swift
//  eWaste
//
//  Created by Sheikh Ahmed on 12/09/2022.
//

import SwiftUI

struct RoundedRectangleButton: View {
    var selectedBorderColors: [Color] = [Color.green, Color.green.opacity(0), Color.green.opacity(0)]
    var title: String = "Login"
    var backgroundColors: [Color] = [Color.green, Color.green.opacity(0.7)]
    
    var body: some View {
        Text(title)
            .font(.body)
            .fontWeight(.medium)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: 50)
            .background(LinearGradient(colors: backgroundColors, startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(20)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(LinearGradient(colors: selectedBorderColors, startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 2))
                    .frame(maxWidth: .infinity, maxHeight: 48)
            }
    }
}

struct LargeButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleButton()
    }
}
