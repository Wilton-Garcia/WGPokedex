//
//  EnumType.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 05/05/22.
//

import Foundation
import SwiftUI
import Rswift


struct Badge{
    static func Ptype(id: Int) -> ImageResource {
        switch id{
        case 1:
            return Images.badgeNormal
        case 2:
            return Images.badgeFighting
        case 3:
            return Images.badgeFlying
        case 4:
            return Images.badgePoison
        case 5:
            return Images.badgeGround
        case 6:
            return Images.badgeRock
        case 7:
            return Images.badgeBug
        case 8:
            return Images.badgeGhost
        case 9:
            return Images.badgeSteel
        case 10:
            return Images.badgeFire
        case 11:
            return Images.badgeWater
        case 12:
            return Images.badgeGrass
        case 13:
            return Images.badgeElectric
        case 14:
            return Images.badgePsychic
        case 15:
            return Images.badgeIce
        case 16:
            return Images.badgeDragon
        case 17:
            return Images.badgeDark
        case 18:
            return Images.badgeFairy
        default:
            return Images.badgeInvisible
        }
    }
}

struct PokemonColor{
    static func Ptype(id: Int) -> Color {
        switch id{
        case 1:
            return Color.TypeNormal
        case 2:
            return Color.TypeFighting
        case 3:
            return Color.TypeFlying
        case 4:
            return Color.TypePoison
        case 5:
            return Color.TypeGround
        case 6:
            return Color.TypeRock
        case 7:
            return Color.TypeBug
        case 8:
            return Color.TypeGhost
        case 9:
            return Color.TypeSteel
        case 10:
            return Color.TypeFire
        case 11:
            return Color.TypeWater
        case 12:
            return Color.TypeGrass
        case 13:
            return Color.TypeEletric
        case 14:
            return Color.TypePsychic
        case 15:
            return Color.TypeIce
        case 16:
            return Color.TypeDragon
        case 17:
            return Color.TypeDark
        case 18:
            return Color.TypeFairy
        default:
            return Color.TypeNormal
        }
    }
}


struct PokemonBackgroundColor{
    static func Ptype(id: Int) -> Color {
        switch id{
        case 1:
            return Color.BackgroundTypeNormal
        case 2:
            return Color.BackgroundTypeFighting
        case 3:
            return Color.BackgroundTypeFlying
        case 4:
            return Color.BackroundTypePoison
        case 5:
            return Color.BackgroundTypeGround
        case 6:
            return Color.BackgroundTypeRock
        case 7:
            return Color.BackgroundTypeBug
        case 8:
            return Color.BackgroundTypeGhost
        case 9:
            return Color.BackgroundTypeSteel
        case 10:
            return Color.BackgroundTypeFire
        case 11:
            return Color.BackgroundTypeWater
        case 12:
            return Color.BackgroundTypeGrass
        case 13:
            return Color.BackgroundTypeElectric
        case 14:
            return Color.BackgroundTypePsychic
        case 15:
            return Color.BackgroundTypeIce
        case 16:
            return Color.BackgroundTypeDragon
        case 17:
            return Color.TypeDark
        case 18:
            return Color.TypeFairy
        default:
            return Color.BackgroundTypeNormal
        }
    }
}
