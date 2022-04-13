//
//  ContentView.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 30/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.TypeDark)
                .frame(width: 270, height: 120)
            Rectangle()
                .fill(Color.TypeBug)
                .frame(width: 270, height: 120).border(.black)

        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
