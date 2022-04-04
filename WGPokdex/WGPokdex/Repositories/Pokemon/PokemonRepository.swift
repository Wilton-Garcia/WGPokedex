//
//  PokemonRepository.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 04/04/22.
//

import Foundation

protocol PokemonRepositoryProtocol{
    func getPokemons()
    func getPokemonById(id: Int, completion: @escaping (_: Pokemon) -> Void)
    func getPokemonByName(name: String)
}

class PokemonRepository: PokemonRepositoryProtocol {
    func getPokemons() {
        print("Get All Pokemons")
    }
    
    func getPokemonById(id: Int, completion: @escaping (_: Pokemon) -> Void) {
        print("Get Pokemons By Id")
        let i = "1";
        let request = NetworkManager.shared.buildRequest(endpoint: Endpoint.Pokemon.rawValue, routerParam: i)
            NetworkManager.shared.executeRequest(request: request){ pk in
                do{
                    if let pokemonData = pk {
                        let pokemon = try JSONDecoder().decode(Pokemon.self, from: pokemonData)
                        completion(pokemon)
                    }
                } catch {
                    
                    print("Erro na conversão")
            }
        }
    }
    
    func getPokemonByName(name: String) {
        print("Get Pokemons By Name")
    }
}
