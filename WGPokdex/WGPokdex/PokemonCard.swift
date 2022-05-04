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
    private let imageName = Images.badgeDark
       var body: some View {
           VStack(alignment: .leading){
               ZStack(alignment: .leading){
                  
                   Rectangle()
                       .fill(Color.BackgroundTypeGrass)
                       .frame(width: 334, height: 115)
                       .cornerRadius(20)
                   Image(Images.patternSixByThree)
                       .resizable()
                       .frame(width: 74, height: 32, alignment: .center)
                       .foregroundColor(Color.BackgroundWhite.opacity(0.3))
                       .offset(x: 100, y: -35)
                   HStack{
                   VStack(alignment: .leading, spacing: 1){
                       Text("#0001").font(.caption)
                       Text("POKEMON")
                           .fontWeight(.heavy)
                           .foregroundColor(Color.BackgroundWhite)
                       HStack{
                           Image(Images.badgeGrass)
                           Image(Images.badgePoison)
                       }
                }.padding()
                       ZStack(alignment: .trailing){
                           Image(Images.patternPokeball)
                               .resizable()
                               .frame(width: 145, height: 145)
                               .foregroundColor(Color.BackgroundWhite.opacity(0.3))
                           Image(R.image.bulbasaur).offset(x: -20, y: -16)
                       }.offset(x: 23)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCard()
    }
}
