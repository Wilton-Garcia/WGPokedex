//
//  NetworkError.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 06/04/22.
//

import Foundation

enum NetworkError: Error, Equatable {
    case genericError(httpStatusCode: Int?)
    case notFound
    case offline
}
