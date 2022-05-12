//
//  PokemonInfoAbout.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 09/05/22.
//

import SwiftUI

struct PokemonInfoAboutView: View {
    let pokemonId: Int
    @StateObject var viewModel = PokemonInfoAboutViewModel.shared
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Text(viewModel.pokemonDescription).padding()
                Text("Pokédex Data").font(.title)
                   
                HStack{
                    VStack(alignment: .leading, spacing: 15){
//                        Text("Species")
                        Text("Height")
                        Text("Weight")
//                        Text("Abilities")
//                        Text("Weaknes")
                    }
                    Spacer()
    
                    VStack(alignment: .leading, spacing: 15){
//                        Text("DATA")
                        Text("\(viewModel.pokemonHeight) cm")
                        Text(String(format: "%.2f Kg",viewModel.pokemonWeight))
//                        Text("DATA")
//                        HStack{
//                            Image(Images.iconTypeFire)
//                            Image(Images.iconTypeFlying)
//                            Image(Images.iconTypeIce)
//                            Image(Images.iconTypePsychic)
//                       }
                    }

                   
                }
//                Text("Training").font(.title)
//                HStack{
//                    VStack(spacing: 15){
//                        Text("EV Yield")
//                        Text("Catch Rate")
//                        Text("Base Friendship")
//                        Text("Base Exp")
//                        Text("Grow Rate")
//                    }
//                    .frame(width: 200)
//
//
//                    VStack(alignment: .leading, spacing: 15){
//                        Text("DATA")
//                        Text("DATA")
//                        Text("DATA")
//                        Text("DATA")
//                        Text("DATA")
//                    }
//                    .frame(width: 180)
//
//                    Spacer()
//                }
//
//                Text("Breeding").font(.title)
//                HStack{
//                    VStack(alignment: .leading, spacing: 15){
//                        Text("Gender")
//                        Text("Egg Groups")
//                        Text("Egg Cycles")
//
//                    }
//                    Spacer()
//                    VStack(alignment: .leading, spacing: 15){
//                        Text("DATA")
//                        Text("DATA")
//                        Text("DATA")
//                    }
//                }
//                Text("Location").font(.title)
//                HStack{
//                    VStack(alignment: .leading, spacing: 15){
//                        Text("#000")
//                        Text("#000")
//                        Text("#000")
//
//                    }
//                    VStack(alignment: .leading, spacing: 15){
//                        Text("DATA")
//                        Text("DATA")
//                        Text("DATA")
//                    }
//                }
            }.padding(10)
        }.onAppear{
            viewModel.loadPokemonData(pokemonId: pokemonId)
        }
    }
}

struct PokemonInfoAbout_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoAboutView(pokemonId: 1)
            .previewDevice("iPhone Xʀ")
    }
}
