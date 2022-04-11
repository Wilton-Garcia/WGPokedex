//
//  ContentViewModel.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 31/03/22.
//

import Foundation

class ContentViewModel: ObservableObject{
    
    @Published var PokemonName = "Pokemon Name"
    @Published var PokemonSprite: URL?
    
    func test(id: String){
        let pkr = PokemonRepository()
        pkr.getPokemonById(id: id) { result in
            switch result {
            case .success(let pokemonData):
                self.PokemonName = pokemonData.name
                self.PokemonSprite = URL(string: pokemonData.sprites.front_default)
            case .failure(let error):
                self.PokemonName = error.localizedDescription
            }
        }
    }
    func loadAll(){
        let pkr = PokemonRepository()
        pkr.getPokemons() { result in
            switch result {
            case .success(let pokemonData):
                self.PokemonName = pokemonData.name
            case .failure(let error):
                self.PokemonName = error.localizedDescription
            }
        }
    }
}
