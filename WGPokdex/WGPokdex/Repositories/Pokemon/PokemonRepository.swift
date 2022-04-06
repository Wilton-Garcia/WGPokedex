//
//  PokemonRepository.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 04/04/22.
//

import Foundation

typealias PokemonResponse = DefaultResponse<Pokemon>
typealias PokemonGetResult = Result<PokemonResponse, NetworkError>


protocol PokemonRepositoryProtocol{
    func getPokemons()
    func getPokemonById(id: String, completion: @escaping (_: PokemonGetResult) -> Void)
    func getPokemonByName(name: String, completion: @escaping (_: Pokemon) -> Void)
}

class PokemonRepository: PokemonRepositoryProtocol {
 
    func getPokemons() {
        print("Get All Pokemons")
        // let request = NetworkManager.shared.buildRequest(endpoint: Endpoint.Pokemon.rawValue, routerParam: id)
    }
    
    func getPokemonById(id: String, completion: @escaping (_: PokemonGetResult) -> Void) {
        print("Get Pokemons By Id")
        
        let parameters = [String.Empity : id]
        let request = NetworkRequest.buildGetRequest(endpoint: Endpoint.Pokemon, parameters: parameters)
        NetworkManager.shared.executeRequest(request: request) { result in
            completion(result)
        }
        
    }
    
    func getPokemonByName(name: String, completion: @escaping (_: Pokemon)-> Void) {
        print("Get Pokemons By Name")
        
    }
}
