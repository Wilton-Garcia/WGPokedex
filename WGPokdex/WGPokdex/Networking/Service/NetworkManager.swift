//
//  NetworkManager.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 30/03/22.
//

import Foundation

protocol NetworkManagerProtocol{
    func executeRequest <T: Codable> (request: NetworkRequest, completion: @escaping (Result<T,NetworkError>) -> Void)
}

class NetworkManager: NetworkManagerProtocol {
    private var task: URLSessionTask?
    private var session: URLSession
    static var shared = NetworkManager()
    
    init(session: URLSession = URLSession.shared){
        self.session = session
    }
    
    fileprivate func buildRequest(networkRequest: NetworkRequest) -> URLRequest {
        var url = networkRequest.baseURL
            .appendingPathComponent(networkRequest.endpoint.rawValue)
        
        if let routerParameter = networkRequest.routerParameter {
           url = url.appendingPathComponent(routerParameter)
        }
        
        var request = URLRequest(url: url,
                                 cachePolicy: .reloadIgnoringLocalAndRemoteCacheData,
                                 timeoutInterval: 100000) //TODO: Definir intervalo de cache em um arquivo próprio
        
        if let queryParams = networkRequest.parameters {
            try URLParameterEncoder().encode(urlRequest: &request, with: queryParams)
        }
        
        return request
    }
    
    func executeRequest <T: Codable> (request: NetworkRequest, completion: @escaping (Result<T, NetworkError>) -> Void) {
        do{
            let request = try self.buildRequest(networkRequest: request)

            task = session.dataTask(with: request) { [weak self] data, response, error in
                DispatchQueue.main.async {
                    let httpResponse = response as? HTTPURLResponse
                    
                    guard let self = self else {
                        completion(.failure(.genericError(httpStatusCode: httpResponse?.statusCode)))
                        return
                    }
                    if let requestError = error {
                        print(requestError.localizedDescription)
                        completion(.failure(.notFound))
                        return
                    }
                    guard let data = data else {
                        completion(.failure(.genericError(httpStatusCode: httpResponse?.statusCode)))
                        return
                    }
                    do {
                        print("Vai converter")
                        let decoded = try JSONDecoder().decode(T.self, from: data)
                        print("Conveteu")
                        completion(.success(decoded))
                    } catch {
                        print("Erro na conversão")
                        completion(.failure(.genericError(httpStatusCode: httpResponse?.statusCode)))
                    }
                }
            }
            self.task?.resume()
        } catch {
            print(error)
            print("Erro na chamada da API")
        }
    }
}
