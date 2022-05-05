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
            return Images.badgeFire
        default:
            return Images.badgeGrass
        }
    }
}
