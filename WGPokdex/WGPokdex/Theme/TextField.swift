//
//  File.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 19/04/22.
//

import Foundation
import SwiftUI

struct CustomTextField: View{
    let title: String
    @State var isTyping: Bool = false
    @State var bindingText: Binding<String>
    @FocusState private var isFocused: Bool
    @State var backgroundColor = Color.BackgroundDefaultInput
    var body: some View{
        HStack{
            Image(systemName: "magnifyingglass")
                .padding(.leading, 10)
                .padding(.vertical, 20)
            TextField(title, text: bindingText)
                .focused($isFocused)
                .padding(.vertical, 10)
                .padding(.trailing, 30)
        }
        .foregroundColor(Color.black)
        .background(isFocused ? Color.BackgroundPressedInput:
                        Color.BackgroundDefaultInput)
        .frame(minWidth: 80, maxWidth: 300)
        .cornerRadius(10)
    }
}

struct TextFieldTyping: TextFieldStyle{
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.vertical, 10)
            .padding(.horizontal, 30)
            .frame(minWidth: 80, maxWidth: 250)
            .background(Color.BackgroundPressedInput)
            .foregroundColor(Color.green)
            .cornerRadius(10)
    }
}
struct TextField_Preview: PreviewProvider {
    @State var text  = ""
    
    static var previews: some View {
        VStack{
            CustomTextField(title: "Text Field", bindingText: .constant(""))
            
            CustomTextField(title: "Pesquisar", bindingText: .constant(""))
            
        }.previewDevice("iPhone 8")
            .previewInterfaceOrientation(.portrait)
    }
}
