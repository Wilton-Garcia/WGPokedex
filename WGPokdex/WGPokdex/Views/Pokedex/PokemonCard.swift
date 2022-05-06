//
//  ContentView.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 30/03/22.
//

typealias Images = R.image

import SwiftUI
import Rswift

struct PokemonCard: View {
    let pokemonNumber: Int
    let pokemonName: String
    let mainPokemonType: Int
    let secondaryPokemonType: Int?
       var body: some View {
           VStack(alignment: .leading) {
               ZStack(alignment: .leading) {
                   Rectangle()
                       .fill(PokemonBackgroundColor.Ptype(id: mainPokemonType))
                       .frame(width: 334, height: 115)
                       .cornerRadius(20)
                   Image(Images.patternSixByThree)
                       .resizable()
                       .frame(width: 74, height: 32, alignment: .center)
                       .foregroundColor(Color.BackgroundWhite.opacity(0.3))
                       .offset(x: 100, y: -35)
                   HStack{
                       VStack(alignment: .leading, spacing: 1) {
                           Text("#0\(pokemonNumber)").font(.caption)
                           Text(pokemonName)
                               .fontWeight(.heavy)
                               .foregroundColor(Color.BackgroundWhite)
                           HStack{
                               Image(Badge.Ptype(id: mainPokemonType))
                               Image(Badge.Ptype(id: secondaryPokemonType ?? 0))
                           }
                       }.padding()
                    ZStack(alignment: .trailing) {
                           Image(Images.patternPokeball)
                               .resizable()
                               .frame(width: 145, height: 145)
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
                                    .offset(x: -20, y: -16)
                       }
                    .offset(x: 23)
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCard(pokemonNumber: 1, pokemonName: "Pokemon", mainPokemonType: 12, secondaryPokemonType: 4)
            .previewDevice("iPhone 11")
    }
}
