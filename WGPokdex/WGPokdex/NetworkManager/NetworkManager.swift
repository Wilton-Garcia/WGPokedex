//
//  NetworkManager.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 30/03/22.
//

import Foundation

protocol NetworkManagerProtocol{
    func executeRequest(request: URLRequest, success: @escaping (Data?) -> Void)
    func buildRequest(endpoint: String, routerParam: String) -> URLRequest
}

class NetworkManager: NetworkManagerProtocol {
    
    static var shared = NetworkManager()
    
    func buildRequest(endpoint: String, routerParam: String) -> URLRequest {
        let urlBase = "https://pokeapi.co/api/v2"
        let urlFinal = URL(string: urlBase+endpoint+routerParam)
        var urlRequest = URLRequest(url: urlFinal!)
        urlRequest.httpMethod = httpMethod.get.rawValue.uppercased()
        return urlRequest
    }
    
    func executeRequest(request: URLRequest, success: @escaping (Data?) -> Void) {
        let urlSession = URLSession.shared
        let dataTask = urlSession.dataTask(with: request) { apiData, urlResponse, error in
            if let data = apiData {
                success(data)
            }
        }
        dataTask.resume()
    }
}
