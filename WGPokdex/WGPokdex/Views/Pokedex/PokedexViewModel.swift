//
//  PokedexViewModel.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 05/05/22.
//

import Foundation
import SwiftUI

class PokedexViewModel: ObservableObject{
    static let shared = PokedexViewModel()
    @Published var pokedex: [PokedexQuery.Data.PokemonV2Pokemon] = []
    
    func loadPokemons(limit: Int){
        Network.shared.apollo.fetch(query: PokedexQuery(limit: 25)){ result in
        switch result {
            case .success(let pokedexResult):
                DispatchQueue.main.async {
                    if let pokedexData = pokedexResult.data?.pokemonV2Pokemon {
                        self.pokedex = pokedexData
                }
            }
            case .failure(let error):
                print(error)
            }
        }
    }
}
