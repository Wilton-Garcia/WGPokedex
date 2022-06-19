//
//  Filters.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 05/05/22.
//

import SwiftUI

struct Filters: View {
    var body: some View {
        HStack{
            Button(action: {
                print("OP1")
            }) {
                Image(Images.iconMenuGenerations)
            }
            Button(action: {
                print("OP2")
            }) {
                Image(Images.iconMenuSort)
            }
            Button(action: {
                print("OP3")
            }) {
                Image(Images.iconMenuFilter)
            }
        }
    }
}

struct Filters_Previews: PreviewProvider {
    static var previews: some View {
        Filters()
    }
}
