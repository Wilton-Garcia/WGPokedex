//
//  Theme.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 13/04/22.
//

import Foundation
import UIKit
import SwiftUI


struct Theme {
    struct PokemonColor{
        static let typeBug = Color(UIColor(red: 140, green: 178, blue: 48, alpha: 1))
        static let red = Color(UIColor(red: 255, green: 0, blue: 0, alpha: 1))
        static let red2 = Color(UIColor(red: 255, green: 10, blue: 10, alpha: 1))
    }
}

extension Color{
    static var TypeBug: Color {
        Color(red: 140, green: 178, blue: 48)
    }
    
    static var TypeDark: Color {
        Color(red: 88, green: 87, blue: 95)
    }
    
    static var TypeDragon: Color {
        Color(red: 15, green: 106, blue: 192)
    }
    
    static var TypeEletric: Color {
        Color(red: 238, green: 213, blue: 53)
    }
    
    static var TypeFairy: Color {
        Color(red: 237, green: 110, blue: 199)
    }
    
    static var TypeFighting: Color {
        Color(red: 208, green: 65, blue: 100)
    }
    
    static var TypeFire: Color {
        Color(red: 253, green: 125, blue: 36)
    }
    
    static var TypeFlying: Color {
        Color(red: 116, green: 143, blue: 201)
    }
    
    static var TypeGhost: Color {
        Color(red: 85, green: 106, blue: 174)
    }
    
    static var TypeGrass: Color {
        Color(red: 98, green: 185, blue: 87)
    }
    
    static var TypeGround: Color {
        Color(red: 221, green: 119, blue: 72)
    }
    
    static var TypeIce: Color {
        Color(red: 97, green: 206, blue: 192)
    }
    
    static var TypeNormal: Color {
        Color(red: 157, green: 160, blue: 170)
    }
    
    static var TypePoison: Color {
        Color(red: 165, green: 82, blue: 204)
    }
    
    static var TypePsychic: Color {
        Color(red: 234, green: 93, blue: 96)
    }
    
    static var TypeRock: Color {
        Color(red: 186, green: 171, blue: 130)
    }
    
    static var TypeSteel: Color {
        Color(red: 65, green: 125, blue: 154)
    }
    
    static var TypeWater: Color {
        Color(red: 74, green: 144, blue: 218)
    }
    
    init(red: Double, green: Double, blue: Double) {
        self.init(.sRGB, red: red / 255, green: green / 255, blue: blue / 255, opacity: 1)
    }
}

struct Colors_Preview: PreviewProvider {
    static var previews: some View{
        VStack {
                Group{
                    Text("Color Pokemon Types")
                    Group{
                        Color.TypeBug
                        Color.TypeDark
                        Color.TypeDragon
                        Color.TypeEletric
                    }
                    Group{
                        Color.TypeFairy
                        Color.TypeFighting
                        Color.TypeFire
                        Color.TypeFlying
                    }
                    Group{
                        Color.TypeGhost
                        Color.TypeGrass
                        Color.TypeGround
                        Color.TypeIce
                    }
                    Group{
                        Color.TypeNormal
                        Color.TypePoison
                        Color.TypePsychic
                        Color.TypeRock
                    }
                    Group{
                        Color.TypeSteel
                        Color.TypeWater
                    }
                    
                }
            Group {
                Text("Background Type Colors")
            }
            
        }
          
        .previewDevice("iPhone 13 Pro Max")
    }
}
