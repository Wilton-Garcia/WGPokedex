//
//  PokemonImager.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 05/05/22.
//

import Foundation

struct PokemonImage{
    static func Front(id: Int) -> URL {
        return URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(id).png")!
    }
    static func ArtWork(id: Int) -> URL {
        return URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/\(id).png")!
    }
}
