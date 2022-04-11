//
//  Pokemon.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 04/04/22.
//

import Foundation

struct Pokemon: Codable{
    var name: String
    var sprites: PokemonSprite
}

struct PokemonSprite : Codable {
    var front_default: String
}
