//
//  PokemonInfoStats.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 09/05/22.
//

import SwiftUI

struct PokemonInfoStats: View {
    var body: some View {
        ScrollView{
            HStack{
                VStack(alignment: .leading){
                    Text("STAT")
                    Text("STAT Text")
                }
                Spacer()
                VStack(alignment: .leading){
                    Text("DATA")
                    Text("STAT")
                }
            }
        }.background(Color.white)
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .top
              )
    }
}

struct PokemonInfoStats_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoStats()
    }
}
