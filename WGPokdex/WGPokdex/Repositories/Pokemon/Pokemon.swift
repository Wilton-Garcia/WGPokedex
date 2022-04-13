//
//  Pokemon.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 04/04/22.
//

import Foundation

struct Pokedex {
    
}

struct Pokemon: Codable{
    var id: Int
    var name: String
}

struct PokemonSprite : Codable {
    var front_default: String
}
