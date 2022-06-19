//
//  CustomTabView.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 12/05/22.
//

import SwiftUI

struct CustomTabView: View {
    let pokemonId: Int
    @StateObject var pokemonInfoViewManager: PokemonInfoViewManager
    
    var body: some View {
        GeometryReader { geometry in
            VStack{
                HStack{
                    CustomTabIconView(assignedView: .about, width: geometry.size.width/2, height: geometry.size.height/20, tabText: "About", pokemonInfoViewManager: pokemonInfoViewManager)
                            .cornerRadius(30.0, corners: .topLeft)
                            .cornerRadius(30.0, corners: .topRight)
                    CustomTabIconView(assignedView: .stats,width: geometry.size.width/2, height: geometry.size.height/20, tabText: "Stats", pokemonInfoViewManager: pokemonInfoViewManager)
                            .cornerRadius(30.0, corners: .topLeft)
                            .cornerRadius(30.0, corners: .topRight)
                    CustomTabIconView(assignedView: .evolution, width: geometry.size.width/2, height: geometry.size.height/20, tabText: "Evol.", pokemonInfoViewManager: pokemonInfoViewManager)
                            .cornerRadius(30.0, corners: .topLeft)
                            .cornerRadius(30.0, corners: .topRight)
                }.frame(width: geometry.size.width, height: geometry.size.height/12)
   
                Spacer()
                switch pokemonInfoViewManager.currentView{
                 case .about:
                    PokemonInfoAboutView(pokemonId: pokemonId)
                 case .stats:
                    PokemonInfoStatsView(pokemonId: pokemonId)
                 case .evolution:
                    PokemonEvolutionView(pokemonId: pokemonId)
                }
            }
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView(pokemonId: 1, pokemonInfoViewManager: PokemonInfoViewManager()).previewDevice("iPhone Xʀ")
    }
}
