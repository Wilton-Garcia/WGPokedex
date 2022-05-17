//
//  PokemonInfoViewManager.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 12/05/22.
//

import Foundation
import SwiftUI

class PokemonInfoViewManager: ObservableObject{
    @Published var currentView: PokemonInfoViewTab = .about
}
