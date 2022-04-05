//
//  PokemonRepository.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 04/04/22.
//

import Foundation

protocol PokemonRepositoryProtocol{
    func getPokemons()
    func getPokemonById(id: String, completion: @escaping (_: Pokemon) -> Void)
    func getPokemonByName(name: String, completion: @escaping (_: Pokemon) -> Void)
}

class PokemonRepository: PokemonRepositoryProtocol {
    func getPokemons() {
        print("Get All Pokemons")
       // let request = NetworkManager.shared.buildRequest(endpoint: Endpoint.Pokemon.rawValue, routerParam: id)
    }
    
    func getPokemonById(id: String, completion: @escaping (_: Pokemon) -> Void) {
        print("Get Pokemons By Id")
        let request = NetworkManager.shared.buildRequest(endpoint: Endpoint.Pokemon.rawValue, routerParam: id)
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
    
    func getPokemonByName(name: String, completion: @escaping (_: Pokemon)-> Void) {
        print("Get Pokemons By Name")
        let request = NetworkManager.shared.buildRequest(endpoint: Endpoint.Pokemon.rawValue, routerParam: name)
            NetworkManager.shared.executeRequest(request: request){ pokemon in
                do{
                    if let pokemonData = pokemon {
                        let pokemon = try JSONDecoder().decode(Pokemon.self, from: pokemonData)
                        completion(pokemon)
                    }
                } catch {
                    
                    print("Erro na conversão")
            }
        }
    }
}
