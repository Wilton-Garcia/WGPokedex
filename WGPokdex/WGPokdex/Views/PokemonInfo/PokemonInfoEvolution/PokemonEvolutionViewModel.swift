//
//  PokemonEvolutionViewModel.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 18/06/22.
//

import Foundation
import Apollo
import SwiftUI

class PokemonEvolutionViewModel: ObservableObject{

    @Published var pokemonEvolutionChainIds: [PokemonInfoQuery.Data.Evolution.Chain.Pokeomon] = []
    static let shared = PokemonEvolutionViewModel()


    func loadPokemonData(pokemonId: Int){
        Network.shared.apollo.fetch(query: PokemonInfoQuery(id: pokemonId)) { result in
            switch result{
            case .success(let pokemonInfo):
                DispatchQueue.main.async {
                    if let pokemonData = pokemonInfo.data?.evolutions?.chain?.pokeomon{
                  
                        self.pokemonEvolutionChainIds = pokemonData

                    }
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
