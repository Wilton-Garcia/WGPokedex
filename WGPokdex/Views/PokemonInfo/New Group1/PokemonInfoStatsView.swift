//
//  PokemonInfoStats.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 09/05/22.
//

import SwiftUI

struct PokemonInfoStatsView: View {
    let pokemonId : Int
    @StateObject var viewModel = PokemonInfoStatsViewModel.shared
    
    var body: some View {
        ScrollView{
            HStack{
                Text("Base Stats").foregroundColor(PokemonColor.Ptype(id: viewModel.mainPokemonType)).bold().padding([.top, .leading], 18.0)
                Spacer()
            }
            HStack{
                VStack(alignment: .leading){
                    Text("HP")
                    Text("Attack")
                    Text("Defense")
                    Text("Sp. Atk")
                    Text("Sp. Def")
                    Text("Speed")
                }
                Spacer()
                VStack(alignment: .leading){
                    Text("\(viewModel.baseHp)")
                    Text("\(viewModel.baseAttack)")
                    Text("\(viewModel.baseDefense)")
                    Text("\(viewModel.baseSpAttack)")
                    Text("\(viewModel.baseSpDeffense)")
                    Text("\(viewModel.baseSpeed)")
       
                }
    
                Spacer()
                VStack(alignment: .leading){
                    StatBar(value: viewModel.baseHp, maxValue: viewModel.maxHp, colorType: viewModel.mainPokemonType).padding(.horizontal)
                    StatBar(value: viewModel.baseAttack, maxValue: viewModel.maxAttack, colorType: viewModel.mainPokemonType).padding(.horizontal)
                    StatBar(value: viewModel.baseDefense, maxValue: viewModel.maxDefense, colorType: viewModel.mainPokemonType).padding(.horizontal)
                    StatBar(value: viewModel.baseSpAttack, maxValue: viewModel.maxSpAttack, colorType: viewModel.mainPokemonType).padding(.horizontal)
                    StatBar(value: viewModel.baseSpDeffense, maxValue: viewModel.maxSpDeffense, colorType: viewModel.mainPokemonType).padding(.horizontal)
                    StatBar(value: viewModel.baseSpeed, maxValue: viewModel.maxSpeed, colorType: viewModel.mainPokemonType).padding(.horizontal)
           
                }.foregroundColor(PokemonColor.Ptype(id: viewModel.mainPokemonType))
                Spacer()
                VStack(alignment: .leading){
                    Text("\(viewModel.maxMinHp)")
                    Text("\(viewModel.maxMinAttack)")
                    Text("\(viewModel.maxMinDefense)")
                    Text("\(viewModel.maxMinSpAttack)")
                    Text("\(viewModel.maxMinSpDeffense)")
                    Text("\(viewModel.maxMinSpeed)")
                }
         
                VStack(alignment: .leading){
                    Text("\(viewModel.maxHp)")
                    Text("\(viewModel.maxAttack)")
                    Text("\(viewModel.maxDefense)")
                    Text("\(viewModel.maxSpAttack)")
                    Text("\(viewModel.maxSpDeffense)")
                    Text("\(viewModel.maxSpeed)")
                }
            }.padding()
            Text("The ranges shws on the right are for a level 100. Pokemon.\nMaxiumum values are based on a benefical naturel, 253 EVs, 31 IVs; minimum values are based on ahindering nature, 0 EVs, 0 IVs")
        } .onAppear{
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

struct PokemonInfoStats_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoStatsView(pokemonId: 4)
    }
}
