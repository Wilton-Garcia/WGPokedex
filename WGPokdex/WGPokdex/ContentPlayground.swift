//
//  ContentView.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 30/03/22.
//



import SwiftUI

struct ContentPlayground: View {
    @State var texto = ""
    @State var itemGrapg = ""
    @State var pokeurl = "http://www.pokemongobrasil.com/wp-content/uploads/2016/08/pokebola-go.png"
    @State var pokes: [PokedexQuery.Data.PokemonV2Pokemon] = []
    var body: some View {
        VStack{
            Text("Carregado do graphQL: \(itemGrapg)")
            CustomTextField(title: "Digite o nome do Pokemon", bindingText: $texto)
            Button(action: {
                print("Você pesquisou \(texto)")
    
                ///Fim experimento Apollo
            }) {
                Text("Pesquisar")
            }.buttonStyle(PrimaryButtom())
            AsyncImage(url: URL(string: pokeurl)!).frame(maxWidth: 150, maxHeight: 150).fixedSize()
            ScrollView{
            ForEach(pokes, id: \.id) { pokemon in
                    poke(name: pokemon.name,
                         url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/\(pokemon.id).png")!)
                }
            }
            .onAppear(){
                Network.shared.apollo.fetch(query: PokedexQuery(limit: 25)){ result in
                    switch result {
                    case .success(let pokeResult):
                        DispatchQueue.main.async {
                            if let vector = pokeResult.data?.pokemonV2Pokemon {
                                pokes = vector
                            }
                        }
                    case .failure(let error):
                        print(error)
                    }
                }
            }
        }
            
    }
}

struct poke: View {
    @State var name: String
    @State var url: URL
    var body: some View{
        HStack{
            Text(name).padding()
            Spacer()
            AsyncImage(url: url) { phase in
                
                if let image = phase.image {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } else if phase.error != nil {
                    Color.red // Indicates an error.
                } else {
                    Color.blue // Acts as a placeholder.
                }
            }
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(10)
        }
        .frame(width: 300, height: 150)
        
        .background(Color.TypeEletric).foregroundColor(Color.TypeDark)
            .cornerRadius(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentPlayground()
    }
}
