//
//  Slider.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 20/04/22.
//

import Foundation
import SwiftUI

struct SliderView: View {
    @State var initiralRanger = CGFloat(100)
    @State var finalRanger = CGFloat(150)
    var body: some View{
        //TODO: Constuir componente com Range
        ZStack{
            Slider(value: $initiralRanger,
                   label:{ Text("Pokemon Number") }, minimumValueLabel: {Text("\(initiralRanger)")}, maximumValueLabel: {Text("900")})
            .padding(30)
        }
    
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
