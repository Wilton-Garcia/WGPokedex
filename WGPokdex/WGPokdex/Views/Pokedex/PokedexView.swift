//
//  PokedexCardView.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 05/05/22.
//

import SwiftUI

struct PokedexView: View {
    @StateObject private var viewModel = PokedexViewModel.shared
    @State private var pokemonText = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("Pokédex")
                .font(.title)
                .fontWeight(.heavy)
            Text("Search for Pokémon by name or using the National Pokédex number.")
                .font(.headline)
                .lineLimit(2).foregroundColor(Color.TextGray)
            CustomTextField(title: "What Pokémon are you looking for?", bindingText: $pokemonText)
            ScrollView{
                ForEach(viewModel.pokedex, id: \.id) { pokemon in
                    PokemonCard(
                        pokemonNumber: pokemon.id,
                        pokemonName: pokemon.name,
                        mainPokemonType: pokemon.pokemonV2Pokemontypes[safe: 0]?.pokemonV2Type?.id ?? 0,
                        secondaryPokemonType: pokemon.pokemonV2Pokemontypes[safe: 1]?.pokemonV2Type?.id ?? 0)
                }
            }
        }.onAppear{
         //   viewModel.loadPokemons(limit: 0)
        }.padding()
    }
}

struct PokedexCardView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
            .previewDevice("iPhone 12")
    }
}
