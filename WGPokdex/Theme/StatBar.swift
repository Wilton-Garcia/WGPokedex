//
//  StatBar.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 18/05/22.
//

import SwiftUI

struct StatBar: View {
    let value: Int
    let maxValue: Int
    let colorType: Int
    
    
    var body: some View {
        let progressValue = CGFloat((value * 100)/maxValue)
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width , height: geometry.size.height/3)
                                    .opacity(0)
                                    .foregroundColor(Color(UIColor.systemTeal))
                                    .cornerRadius(45)
                
                Rectangle().frame(width: min(CGFloat(progressValue/100)*geometry.size.width*2.5, geometry.size.width), height: geometry.size.height/3)
                    .foregroundColor(PokemonColor.Ptype(id: colorType))
                                    .cornerRadius(45)
            }
        }
    }
}

struct StatBar_Previews: PreviewProvider {
    static var previews: some View {
        
        VStack{
            StatBar(value: 44, maxValue: 292, colorType:12)
            StatBar(value: 48, maxValue: 90, colorType: 5)
            StatBar(value: 65, maxValue: 121, colorType: 3)
            StatBar(value: 50, maxValue: 94, colorType: 15)
            StatBar(value: 64, maxValue: 249, colorType: 2)
            StatBar(value: 43, maxValue: 203, colorType: 7)


      
        }.padding()
    }
}
