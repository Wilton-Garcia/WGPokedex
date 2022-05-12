//
//  PokemonInfoStats.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 09/05/22.
//

import SwiftUI

struct PokemonInfoStats: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("STAT")
                Text("STAT Text")
            }
            VStack(alignment: .leading){
                Text("DATA")
                Text("STAT")
            }
        }
    }
}

struct PokemonInfoStats_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoStats()
    }
}
