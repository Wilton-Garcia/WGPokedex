//
//  PokemonInfoAbout.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 09/05/22.
//

import SwiftUI

struct PokemonInfoAbout: View {
    var body: some View {
        ScrollView{
        VStack(alignment: .leading, spacing: 10){
            Text("Pokemon Description, MultiAlign Field with info about pokemon !")
            Text("Pokédex Data")
            HStack{
                Text("Species")
                Spacer()
                Text("DATA")
                Spacer()
            }
            HStack{
                Text("Height")
                Spacer()
                Text("DATA")
                Spacer()
            }
            HStack{
                Text("Weight")
                Spacer()
                Text("DATA")
                Spacer()
            }
            HStack{
                Text("Abilities")
                Spacer()
                Text("DATA")
                Spacer()
            }
            HStack{
                Text("Species")
                Spacer()
                HStack{
                    Image(Images.iconTypeFire)
                    Image(Images.iconTypeFlying)
                    Image(Images.iconTypeIce)
                    Image(Images.iconTypePsychic)
                }
                Spacer()
            }
        }
        VStack(alignment: .leading, spacing: 10){
            Text("Training")
            HStack{
                Text("EV Yeld")
                Spacer()
                Text("DATA")
                Spacer()
            }
            HStack{
                Text("Catch Rate")
                Spacer()
                Text("DATA")
                Spacer()
            }
            HStack{
                Text("Base Friendship")
                Spacer()
                Text("DATA")
                Spacer()
            }
            HStack{
                Text("Base Exp")
                Spacer()
                Text("DATA")
                Spacer()
            }
            HStack{
                Text("Grow Rate")
                Spacer()
                Text("DATA")
                Spacer()
            }
        }
            VStack(alignment: .leading, spacing: 10){
                Text("Breeding")
                HStack{
                    Text("Gender")
                    Spacer()
                    Text("DATA")
                    Text("DATA")
                    Spacer()
                }
                HStack{
                    Text("Egg Groups")
                    Spacer()
                    Text("DATA")
                    Text("DATA")
                    Spacer()
                }
                HStack{
                    Text("Egg Location")
                    Spacer()
                    Text("DATA")
                    Spacer()
                }
            }
            VStack(alignment: .leading, spacing: 10){
                Text("Location")
                HStack{
                    Text("Location")
                    Spacer()
                    Text("DATA")
                    Spacer()
                }
                HStack{
                    Text("Location")
                    Spacer()
                    Text("DATA")
                    Spacer()
                }
                HStack{
                    Text("Location")
                    Spacer()
                    Text("DATA")
                    Spacer()
                }
                HStack{
                    Text("Location")
                    Spacer()
                    Text("DATA")
                    Spacer()
                }
                HStack{
                    Text("Location")
                    Spacer()
                    Text("DATA")
                    Spacer()
                }
            }
        }
    }
}

struct PokemonInfoAbout_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoAbout()
    }
}
