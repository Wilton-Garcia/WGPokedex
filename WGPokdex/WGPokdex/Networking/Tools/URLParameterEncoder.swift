//
//  URLParameterEncoder.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 06/04/22.
//

import Foundation

protocol ParameterEncoder {
    func encode(urlRequest: inout URLRequest, with parameters: Parameter)
}

struct URLParameterEncoder: ParameterEncoder{
    func encode(urlRequest: inout URLRequest, with parameters: Parameter) {
        guard let url = urlRequest.url else { return }
        if var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false){
            urlComponents.queryItems = [URLQueryItem]()
            for (key, value) in parameters{
                let queryItem = URLQueryItem(name: key, value: value)
                urlComponents.queryItems?.append(queryItem)
            }
            urlRequest.url = urlComponents.url
        }
    }
}
