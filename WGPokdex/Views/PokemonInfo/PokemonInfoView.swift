//
//  PokemonInfoView.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 09/05/22.
//

import SwiftUI

struct PokemonInfoView: View {
    let pokemonNumber: Int
    let pokemonName: String
    let mainPokemonType: Int
    let secondaryPokemonType: Int?
    @StateObject var pokemonInfoViewManeger = PokemonInfoViewManager()
    var body: some View {
        VStack{
            HStack{
                
                ZStack{
                    
                    Image(Images.patternPokeball)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 130 , height: 130)
                        .foregroundColor(Color.BackgroundWhite.opacity(0.3))
                    AsyncImage(url: PokemonImage.ArtWork(id: pokemonNumber)) { phase in
                            if let image = phase.image {
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 130 , height: 130)
                                
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
                VStack(alignment: .leading){
                    Text("#00\(pokemonNumber)")
                    Text(pokemonName)
                    HStack{
                        Image(Badge.Ptype(id: mainPokemonType))
                        Image(Badge.Ptype(id: secondaryPokemonType ?? 0))
                    }
                }
            }.padding()
            CustomTabView(pokemonId: pokemonNumber, pokemonInfoViewManager: PokemonInfoViewManager())
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .top
          )
        .background(PokemonBackgroundColor.Ptype(id: mainPokemonType))
    }
}

struct PokemonInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoView(pokemonNumber: 1, pokemonName: "Pokemon", mainPokemonType: 12, secondaryPokemonType: 4)
    }
}
