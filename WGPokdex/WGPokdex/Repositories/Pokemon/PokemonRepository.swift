//
//  PokemonRepository.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 04/04/22.
//

import Foundation

typealias PokemonResponse = DefaultResponse<Pokemon>
typealias PokemonGetResult = Result<Pokemon, NetworkError>


protocol PokemonRepositoryProtocol{
    func getPokemons(completion: @escaping (_: PokemonGetResult) -> Void)
    func getPokemonById(id: String, completion: @escaping (_: PokemonGetResult) -> Void)
    func getPokemonByName(name: String, completion: @escaping (_: Pokemon) -> Void)
}

class PokemonRepository: PokemonRepositoryProtocol {
 
    func getPokemons(completion: @escaping (_: PokemonGetResult) -> Void ) {
        print("Get All Pokemons")
        let params = ["Offset":"0",
                      "limit":"20"]
        let request = NetworkRequest.buildGetRequest(endpoint: Endpoint.Pokemon, routerParameter: nil, parameters: params)
    }
    
    func getPokemonById(id: String, completion: @escaping (_: PokemonGetResult) -> Void) {
        print("Get Pokemons By Id")
        
        let routeParameter = id
        let request = NetworkRequest.buildGetRequest(endpoint: Endpoint.Pokemon, routerParameter: routeParameter, parameters: nil)
        NetworkManager.shared.executeRequest(request: request) { result in
            completion(result)
        }
    }
    
    func getPokemonByName(name: String, completion: @escaping (_: Pokemon)-> Void) {
        print("Get Pokemons By Name")
        
    }
}
