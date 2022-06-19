//
//  PokemonEvolutionView.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 19/05/22.
//

import SwiftUI

struct PokemonEvolutionView: View {
    let pokemonId : Int
    @StateObject var viewModel = PokemonEvolutionViewModel.shared

    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Text("Evolution Chart").bold().padding()
        
                ForEach(viewModel.pokemonEvolutionChainIds, id: \.id) { pokemon in

                   /*

                    HStack{
                        Spacer()
                        Image(Images.iconMenuBack).rotationEffect(Angle.degrees(270))
                        Spacer()
                    }

                    */
                    HStack{
                        Spacer()
                        PokeEvolutionCardView(pokemonNumber: pokemon.id, pokemonName: pokemon.name)
                        Spacer()
                    }


                }
                /*
                HStack{
                    PokeEvolutionCardView(pokemonNumber: 1, pokemonName: "Bulbasaur").padding()
                    Spacer()
                    Image(Images.iconMenuBack).rotationEffect(Angle.degrees(180))
                    Spacer()
                    PokeEvolutionCardView(pokemonNumber: 2, pokemonName: "Ivysaur").padding()
                }
                HStack{
                    
                    PokeEvolutionCardView(pokemonNumber: 2, pokemonName: "Ivysaur").padding()
                    Spacer()
                    Image(Images.iconMenuBack).rotationEffect(Angle.degrees(180))
                    Spacer()
                    PokeEvolutionCardView(pokemonNumber: 3, pokemonName: "Venasaur").padding()
                }
                 */
            }
        }.onAppear{
            viewModel.loadPokemonData(pokemonId: pokemonId)
        }
        .background(Color.white)
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .top
                  ).cornerRadius(30.0, corners: .topLeft)
                   .cornerRadius(30.0, corners: .topRight)
    }
}

struct PokemonEvolutionView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonEvolutionView(pokemonId: 1)
    }
}
