//
//  Extensions.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 05/05/22.
//

import Foundation

extension Collection where Indices.Iterator.Element == Index {
   public subscript(safe index: Index) -> Iterator.Element? {
     return (startIndex <= index && index < endIndex) ? self[index] : nil
   }
}
