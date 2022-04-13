//
//  DefaultResponse.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 06/04/22.
//

import Foundation

struct DefaultResponse: Codable {
    let next: String?
    let previous: String?
    let results: [DefaultResult]
}

struct DefaultResult: Codable {
    let name: String
    let url: URL
}
