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
        NavigationView{
        VStack(alignment: .leading, spacing: 15){
            HStack{
                Spacer()
            Filters().padding(.trailing, 10)
            }
            Text("Pokédex")
                .font(.title)
                .fontWeight(.heavy)
            Text("Search for Pokémon by name or using the National Pokédex number.")
                .font(.headline)
                .lineLimit(2).foregroundColor(Color.TextGray)
            CustomTextField(title: "What Pokémon are you looking for?", bindingText: $pokemonText)
           
                ScrollView{
                    ForEach(viewModel.pokedex, id: \.id) { pokemon in
                        NavigationPokemonCard(
                            pokemonNumber: pokemon.id,
                            pokemonName: pokemon.name,
                            mainPokemonType: pokemon.pokemonV2Pokemontypes[safe: 0]?.pokemonV2Type?.id ?? 0,
                            secondaryPokemonType: pokemon.pokemonV2Pokemontypes[safe: 1]?.pokemonV2Type?.id ?? 0)
                        }
                    }
                }
       
        
        .padding(30)
        .onAppear{
            viewModel.loadPokemons(limit: 0)
        }.background(content: {
            Image(Images.patternPokeball)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.TextGray)
                .opacity(0.3)
                .offset(y: -430)
        })
    }
    }
}

struct PokedexCardView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
            .previewDevice("iPhone Xr")
            
    }
}
