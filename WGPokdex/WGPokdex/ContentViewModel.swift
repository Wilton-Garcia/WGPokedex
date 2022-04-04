//
//  ContentViewModel.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 31/03/22.
//

import Foundation

class ContentViewModel: ObservableObject{
    
    @Published var PokemonName = ""
    
    func test(){
       let pkr = PokemonRepository()
        pkr.getPokemonById(id: 0) { pokemon in
            self.PokemonName = pokemon.name!
        }
    }
}
