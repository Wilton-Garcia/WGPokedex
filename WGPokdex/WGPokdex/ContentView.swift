//
//  ContentView.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 30/03/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    @State var id = ""
    
    var body: some View {
        VStack{
            TextField(text: $id, label: {
                Text("Pokemon ID").scaleEffect(2)
                
            }).padding().keyboardType(.numberPad)
                .frame(width: 300, height: 75)
                .border(.orange)
            Button(action: {
                viewModel.test(id: id)
            }, label: {
                Text("Load Pokemon")
                    .scaleEffect(2)
            }).frame(width: 300, height: 100)
                .background(Color.orange)
            
            
            
            Text(viewModel.PokemonName)
                .scaleEffect(2)
                .frame(width: 300, height: 75)
                .background(Color.orange).foregroundColor(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
