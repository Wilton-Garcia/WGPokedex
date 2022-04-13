//
//  PokemonRepository.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 04/04/22.
//

import Foundation
import SwiftUI

typealias PokemonGetResult = Result<Pokemon, NetworkError>
typealias DefaultListResult = Result<DefaultResponse, NetworkError>


protocol PokemonRepositoryProtocol{
    func getPokemons(completion: @escaping (_: DefaultListResult) -> Void)
    func getPokemonById(id: String, completion: @escaping (_: PokemonGetResult) -> Void)
    func getPokemonByName(name: String, completion: @escaping (_: Pokemon) -> Void)
}

class PokemonRepository: PokemonRepositoryProtocol {
 
    
    func loadPokedex(){
        getPokemons { pokemonData in
            var pokemons: [Pokemon]
            switch pokemonData {
            case .success(let pokemonData):
                for dr: DefaultResult in pokemonData.results {
                    print(dr.name)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func getPokemons(completion: @escaping (_: DefaultListResult) -> Void ) {
//        print("Get All Pokemons")
//        let params = ["Offset":"0",
//                      "limit":"20"]
//        let request = NetworkRequest.buildGetRequest(endpoint: Endpoint.Pokemon, routerParameter: nil, parameters: params)
//        NetworkManager.shared.executeRequest(request: request) { result in
//            completion(result)
//        }
        
//        var pokemons: [Pokemon]
//
//        for i in 1...20 {
//            getPokemonById(id: "\(i)") { pgr in
//                switch pgr {
//                    case .success(let pokemon):
//                        pokemons.append(pokemon)
//                case .failure(let error):
//                        print(error)
//                }
//            }
//        }
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
