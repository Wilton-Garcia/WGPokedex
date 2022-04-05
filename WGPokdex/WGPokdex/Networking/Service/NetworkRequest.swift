//
//  NetworkRequest.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 05/04/22.
//

import Foundation

struct NetworkRequest {
    let baseURL: URL
    let httpMethod: HTTPMethod
    let parameters: String?
    
    static func buildGetRequest(parameters: String?) -> NetworkRequest{
        buildRequest(method: .get, parameters: parameters)
    }
    
    private static func buildRequest(method: HTTPMethod, parameters: String?) -> NetworkRequest{
        NetworkRequest(baseURL: URL(string: URLs.urlPokemonBase.rawValue)!,
                     httpMethod: method,
                     parameters: parameters)
    }
}
