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
    
    static var BackgroundTypeBug: Color {
        Color(red: 139, green: 214, blue: 116)
    }
    
    static var BackgroundTypeDark: Color {
        Color(red: 111, green: 110, blue: 120)
    }
    
    static var BackgroundTypeDragon: Color {
        Color(red: 115, green: 131, blue: 185)
    }
    
    static var BackgroundTypeElectric: Color {
        Color(red: 242, green: 203, blue: 85)
    }
    
    static var BackgroundTypeFairy: Color {
        Color(red: 235, green: 168, blue: 195)
    }
    
    static var BackgroundTypeFighting: Color {
        Color(red: 235, green: 73, blue: 113)
    }
    
    static var BackgroundTypeFire: Color {
        Color(red: 255, green: 167, blue: 86)
    }
    
    static var BackgroundTypeFlying: Color {
        Color(red: 131, green: 162, blue: 227)
    }
    
    static var BackgroundTypeGhost: Color {
        Color(red: 133, green: 113, blue: 190)
    }
    
    static var BackgroundTypeGrass: Color {
        Color(red: 139, green: 190, blue: 138)
    }
    
    static var BackgroundTypeGround: Color {
        Color(red: 247, green: 133, blue: 81)
    }
    
    static var BackgroundTypeIce: Color {
        Color(red: 145, green: 216, blue: 223)
    }
    
    static var BackgroundTypeNormal: Color {
        Color(red: 181, green: 185, blue: 196)
    }
    
    static var BackroundTypePoison: Color {
        Color(red: 159, green: 110, blue: 151)
    }
    
    static var BackgroundTypePsychic: Color{
        Color(red: 255, green: 101, blue: 104)
    }
    
    static var BackgroundTypeRock: Color {
        Color(red: 212, green: 194, blue: 148)
    }
    
    static var BackgroundTypeSteel: Color {
        Color(red: 76, green: 145, blue: 178)
    }
    
    static var BackgroundTypeWater: Color {
        Color(red: 88, green: 171, blue: 246)
    }
    
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
        HStack {
            VStack{
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
            }
            VStack{
                Group {
                    Text("Background Type Colors")
                    Group{
                        Color.BackgroundTypeBug
                        Color.BackgroundTypeDark
                        Color.BackgroundTypeDragon
                        Color.BackgroundTypeElectric
                    }
                    Group{
                        Color.BackgroundTypeFairy
                        Color.BackgroundTypeFighting
                        Color.BackgroundTypeFire
                        Color.BackgroundTypeFlying
                    }
                    Group{
                        Color.BackgroundTypeGhost
                        Color.BackgroundTypeGrass
                        Color.BackgroundTypeGround
                        Color.BackgroundTypeIce
                    }
                    Group{
                        Color.BackgroundTypeNormal
                        Color.BackroundTypePoison
                        Color.BackgroundTypePsychic
                        Color.BackgroundTypeRock
                    }
                    Group{
                        Color.BackgroundTypeSteel
                        Color.BackgroundTypeWater
                    }
                }
            }
            
        }
          
        .previewDevice("iPhone 13 Pro Max")
    }
}
