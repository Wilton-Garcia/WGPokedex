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
        let url = networkRequest.baseURL.appendingPathComponent(networkRequest.endpoint.rawValue)
        
        var request = URLRequest(url: url,
                                 cachePolicy: .returnCacheDataElseLoad,
                                 timeoutInterval: 10) //TODO: Definir intervalo de cache em um arquivo próprio
        
        if let queryParams = networkRequest.parameters {
            try URLParameterEncoder().encode(urlRequest: &request, with: queryParams)
        }
        
        return request
    }
    
    func executeRequest <T: Codable> (request: NetworkRequest, completion: @escaping (Result<T, NetworkError>) -> Void) {
        do{
            let request = self.buildRequest(networkRequest: request)
            task = session.dataTask(with: request, completionHandler: {data, response, error in
                DispatchQueue.main.async {
                    let httpResponse = response as? HTTPURLResponse
                    guard let data = data else {
                        completion(.failure(.genericError(httpStatusCode: httpResponse?.statusCode)))
                        return
                    }
                    do {
                        let decoded = try JSONDecoder().decode(T.self, from: data)
                        completion(.success(decoded))
                    } catch {
                        completion(.failure(.genericError(httpStatusCode: httpResponse?.statusCode)))
                    }
                }
            })
        } catch {
            print("Erro na chamada da API")
        }
        self.task?.resume()
    }
}
