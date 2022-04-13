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
            HStack{
              
                Text(viewModel.PokemonName)
                Spacer()
                AsyncImage(url: viewModel.PokemonSprite)
                
            }.frame(width: 300, height: 75)
                .border(Color.orange).foregroundColor(.blue)
            Button(action: {
                viewModel.loadAll()
            }, label: {
                Text("Load All Pokemon")
                    .scaleEffect(2)
            }).frame(width: 300, height: 50)
                .background(Color.green)
            ScrollView(.vertical){
//                ForEach(viewModel.Result!){ result in
//                    PokeCard(name: result.name, urlImage: result.url)
//                    
              //  }
            }.padding(.bottom)
        }
    }
}

struct PokeCard: View {
    let name: String
    let urlImage: URL
    
    var body: some View {
        ZStack{
            Rectangle().fill(Color.indigo).frame(width: 300, height: 50)
            Text("Name:")
            AsyncImage(url: urlImage )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 mini")
            .preferredColorScheme(.light)
        ContentView()
            .previewDevice("iPhone 12 mini")
            .preferredColorScheme(.dark)
       
    }
}
