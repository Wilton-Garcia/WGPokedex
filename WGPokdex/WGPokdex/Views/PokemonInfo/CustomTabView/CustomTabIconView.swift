//
//  CustomTabIconView.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 12/05/22.
//

import Foundation
import SwiftUI

struct CustomTabIconView: View{
    let assignedView: PokemonInfoViewTab
    let width, height: CGFloat
    let tabText: String
    @StateObject var pokemonInfoViewManager: PokemonInfoViewManager
    
    var body: some View {
        VStack {
            Text(tabText)
                .font(.title2)
                .bold()
                .padding(.top, 20)
                .padding(.horizontal)
            Spacer()
        }
        .background(
            Image(Images.patternPokeball)
                    .opacity(0.3)
                    .offset(y: 26)
        )
        .foregroundColor(pokemonInfoViewManager.currentView == assignedView ? Color.white : Color.TextGray)
        .onTapGesture {
            print(pokemonInfoViewManager.currentView)
            pokemonInfoViewManager.currentView = assignedView
            print(pokemonInfoViewManager.currentView)
        }
    }
}
