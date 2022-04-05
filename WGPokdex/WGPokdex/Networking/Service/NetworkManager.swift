//
//  NetworkManager.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 30/03/22.
//

import Foundation

protocol NetworkManagerProtocol{
    func executeRequest(request: URLRequest, success: @escaping (Data?) -> Void)
    func buildRequest(endpoint: String) -> URLRequest
    func buildRequest(endpoint: String, routerParam: String?) -> URLRequest
}

class NetworkManager: NetworkManagerProtocol {
    
    static var shared = NetworkManager()
    
    func buildRequest(endpoint: String) -> URLRequest {
        let url = URL(string: endpoint)!
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = HTTPMethod.get.rawValue
        return urlRequest
    }
    
    func buildRequest(endpoint: String, routerParam: String?) -> URLRequest {
        let urlFinal = URL(string: URLs.urlPokemonBase.rawValue+endpoint+(routerParam ?? String.Empity))
        var urlRequest = URLRequest(url: urlFinal!)
        urlRequest.httpMethod = HTTPMethod.get.rawValue
        return urlRequest
    }
    
    func executeRequest(request: URLRequest, success: @escaping (Data?) -> Void) {
        let urlSession = URLSession.shared
        let dataTask = urlSession.dataTask(with: request) { apiData, urlResponse, error in
            DispatchQueue.main.async {
                if let data = apiData {
                    success(data)
                }
            }
        }
        dataTask.resume()
    }
}
