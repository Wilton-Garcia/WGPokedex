//
//  ButtonStyle.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 19/04/22.
//

import Foundation
import SwiftUI

struct PrimaryButtom: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 35.0)
            .padding(.vertical, 10)
            .frame(minWidth: 300)
            .background(Color.TypePsychic)
            .foregroundColor(Color.white)
            .cornerRadius(4)
    }
}

struct SecondaryButtom: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 35.0)
            .padding(.vertical, 10)
            .frame(minWidth: 300)
            .background(configuration.isPressed ?
                        Color.TypePsychic:
                        Color.BackgroundDefaultInput)
            .foregroundColor(configuration.isPressed ?
                            Color.white:
                            Color.TextGray)
            .cornerRadius(4)
    }
}

struct Buttons_Preview: PreviewProvider {
    static var previews: some View {
        VStack{
            Button(action: { print("Clicked") },
                  label:  { Text("Primary Button") }
            ).buttonStyle(PrimaryButtom())
            
            Button(action: { print("Clicked") },
                  label:  { Text("Secondary Button") }
            )
            .buttonStyle(SecondaryButtom())
            
        }.previewDevice("iPhone 8")
            .previewInterfaceOrientation(.portrait)
    }
}

