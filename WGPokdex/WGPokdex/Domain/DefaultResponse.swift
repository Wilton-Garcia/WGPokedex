//
//  DefaultResponse.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 06/04/22.
//

import Foundation

struct DefaultResponse<T: Codable> : Codable {
    let status: Int
    let data: T
}
