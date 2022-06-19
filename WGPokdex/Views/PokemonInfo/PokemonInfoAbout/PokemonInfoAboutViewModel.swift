//
//  PokemonInfoAboutViewModel.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 11/05/22.
//

import Foundation

class PokemonInfoAboutViewModel: ObservableObject{
    static let shared = PokemonInfoAboutViewModel()
    @Published var pokemonDescription = ""
    @Published var pokemonHeight = 0
    @Published var pokemonWeight = 0.0
    @Published var pokedex: [PokedexQuery.Data.PokemonV2Pokemon] = []
    @Published var primaryPokemonType = 0
    @Published var secondaryPokemonType = 0
    
    
    func loadPokemonData(pokemonId: Int){
        Network.shared.apollo.fetch(query: PokemonInfoQuery(id: pokemonId)){ result in
                switch result{
                case .success(let pokemonResult):
                    DispatchQueue.main.async {
                        if let pokemonDescrptionData = pokemonResult.data?.description[safe: 0]?.flavorText,
                           let pokemonHeightData = pokemonResult.data?.pokemonData?.height,
                           let pokemonWeightData = pokemonResult.data?.pokemonData?.weight,
                           let primaryPokemonTypeData = pokemonResult.data?.pokemonData?.types[safe: 0]?.type?.id
                        {
                            
                            self.pokemonDescription = pokemonDescrptionData.replacingOccurrences(of: "\n", with: "" )
                            self.pokemonHeight = pokemonHeightData*10
                            self.pokemonWeight = Double(pokemonWeightData)/10.0
                            self.primaryPokemonType = primaryPokemonTypeData
                            
                            if let secondaryPokemonTypeData = pokemonResult.data?.pokemonData?.types[safe: 1]?.type?.id {
                                self.secondaryPokemonType = secondaryPokemonTypeData
                            }
                        }
                           
                    }
                case .failure(let error):
                    print(error)
                }
        }
    }
}
