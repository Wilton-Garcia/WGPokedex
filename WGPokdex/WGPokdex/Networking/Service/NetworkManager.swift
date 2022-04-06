//
//  NetworkManager.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 30/03/22.
//

import Foundation

protocol NetworkManagerProtocol{
    func executeRequest(request: URLRequest, success: @escaping (Data?) -> Void)
    func executeRequest <T: Codable> (request: NetworkRequest, completion: @escaping (Result<T,NetworkError>) -> Void)
    func buildRequest(request: NetworkRequest) -> URLRequest
    func buildRequest(endpoint: String) -> URLRequest
    func buildRequest(endpoint: String, routerParam: String?) -> URLRequest
}

class NetworkManager: NetworkManagerProtocol {
    private var task: URLSessionTask?
    private var session: URLSession
    static var shared = NetworkManager()
    
    init(session: URLSession = URLSession.shared){
        self.session = session
    }
    
    internal func buildRequest(request: NetworkRequest) -> URLRequest {
        let url = request.baseURL.appendingPathComponent(request.endpoint.rawValue)
        var request = URLRequest(url: url,
                                 cachePolicy: .returnCacheDataElseLoad,
                                 timeoutInterval: 10) //TODO: Definir intervalo de cache em um arquivo próprio
        return request
    }
    
    func executeRequest <T: Codable> (request: NetworkRequest, completion: @escaping (Result<T, NetworkError>) -> Void) {
        do{
            let request = buildRequest(request: request)
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
