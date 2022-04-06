//
//  ContentViewModel.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 31/03/22.
//

import Foundation

class ContentViewModel: ObservableObject{
    
    @Published var PokemonName = "Pokemon Name"
    
    func test(id: String){
        let pkr = PokemonRepository()
        pkr.getPokemonById(id: id) { pokemon in
            self.PokemonName = pokemon.name!
        }
    }
}
