//
//  ContentView.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 30/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var texto = ""
    var body: some View {
        VStack{
            
            CustomTextField(title: "Digite o nome do Pokemon", bindingText: $texto)
            Button(action: {
                print("Você pesquisou \(texto)")
            }) {
                Text("Pesquisar")
            }.buttonStyle(PrimaryButtom())
        }.background(Color.white)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
