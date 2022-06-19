//
//  Apollo.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 04/05/22.
//

import Foundation
import Apollo

class Network{
    static let shared = Network()
    lazy var apollo = ApolloClient(url: URL(string: "https://beta.pokeapi.co/graphql/v1beta")!)
}
