//
//  Pokemon.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 12/05/22.
//

import Foundation

struct Pokemon{
    let PokemonNumber: Int
    let PokemonName: String
    let PokemonTypes: [PokemonType]
    let PokemonHeight: Int
    let PokemonWeight: Double
    
}

struct PokemonType{
    let TypeId: Int
    let TypeName: String
}
