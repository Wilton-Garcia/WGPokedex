//
//  PokeEvolutionCardView.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 19/05/22.
//

import SwiftUI

struct PokeEvolutionCardView: View {
    let pokemonNumber: Int
    let pokemonName: String
    
    var body: some View {
        VStack{
            ZStack{
                Image(Images.patternPokeball)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.BackgroundDefaultInput)
                AsyncImage(url: PokemonImage.ArtWork(id: pokemonNumber)) { phase in
                        if let image = phase.image {
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80 , height: 80)
                            
                        } else if phase.error != nil {
                                Color.red
                                    .frame(width: 130 , height: 130)
                        } else {
                            Image(Images.pokebola)
                                .resizable()
                                .frame(width: 130 , height: 130)
                            }
                        }
                            
            }
            Text("#\(pokemonNumber)")
            Text("\(pokemonName)")
        }
        
    }
}

struct PokeEvolutionCardView_Previews: PreviewProvider {
    static var previews: some View {
        PokeEvolutionCardView(pokemonNumber: 508, pokemonName: "Bulbasaur")
    }
}
