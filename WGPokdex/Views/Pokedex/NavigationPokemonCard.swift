//
//  NavigationPokemonCard.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 09/05/22.
//

import SwiftUI

struct NavigationPokemonCard: View {
    let pokemonNumber: Int
    let pokemonName: String
    let mainPokemonType: Int
    let secondaryPokemonType: Int?
    var body: some View {
        NavigationLink(destination: PokemonInfoView(pokemonNumber: pokemonNumber, pokemonName: pokemonName, mainPokemonType: mainPokemonType, secondaryPokemonType: secondaryPokemonType)) {
            PokemonCard(pokemonNumber: pokemonNumber, pokemonName: pokemonName, mainPokemonType: mainPokemonType, secondaryPokemonType: secondaryPokemonType)
        }
    }
}

struct NavigationPokemonCard_Previews: PreviewProvider {
    static var previews: some View {
        NavigationPokemonCard(pokemonNumber: 1, pokemonName: "POKEMON", mainPokemonType: 12, secondaryPokemonType: 4)
    }
}
