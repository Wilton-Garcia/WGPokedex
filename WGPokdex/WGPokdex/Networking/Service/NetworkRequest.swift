//
//  NetworkRequest.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 05/04/22.
//

import Foundation

typealias Parameter = [String: String]

struct NetworkRequest {
    let baseURL: URL
    let endpoint: Endpoint
    let httpMethod: HTTPMethod
    let routerParameter: String?
    let parameters: Parameter?
    
    static func buildGetRequest(endpoint: Endpoint, routerParameter: String?, parameters: Parameter?) -> NetworkRequest{
        buildRequest(method: .get,
                     endpoint: endpoint,
                     routerParameter: routerParameter,
                     parameters: parameters)
    }
    
    private static func buildRequest(method: HTTPMethod, endpoint: Endpoint,routerParameter: String?, parameters: Parameter?) -> NetworkRequest{
        NetworkRequest(baseURL: URL(string: URLs.urlPokemonBase.rawValue)!,
                       endpoint: endpoint,
                       httpMethod: method,
                       routerParameter: routerParameter,
                       parameters: parameters)
    }
}