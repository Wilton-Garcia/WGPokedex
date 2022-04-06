//
//  NetworkRequest.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 05/04/22.
//

import Foundation

struct NetworkRequest {
    let baseURL: URL
    let endpoint: Endpoint
    let httpMethod: HTTPMethod
    let parameters: String?
    
    static func buildGetRequest(endpoint: Endpoint, parameters: String?) -> NetworkRequest{
        buildRequest(method: .get,
                     endpoint: endpoint,
                     parameters: parameters)
    }
    
    private static func buildRequest(method: HTTPMethod, endpoint: Endpoint, parameters: String?) -> NetworkRequest{
        NetworkRequest(baseURL: URL(string: URLs.urlPokemonBase.rawValue)!,
                       endpoint: endpoint,
                       httpMethod: method,
                       parameters: parameters)
    }
}
