//
//  ContentView.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 30/03/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack{
            Button(action: {
                viewModel.test()
            }, label: {
                Text("Load Pokemon")
            })
            
            
            Text(viewModel.PokemonName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
