//
//  Extensions.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 05/05/22.
//

import Foundation
import SwiftUI


//Evista crash quando tentamos acessar um indice que não existe
///Font:  https://wendyliga.medium.com/say-goodbye-to-index-out-of-range-swift-eca7c4c7b6ca
extension Collection where Indices.Iterator.Element == Index {
   public subscript(safe index: Index) -> Iterator.Element? {
     return (startIndex <= index && index < endIndex) ? self[index] : nil
   }
}
///End
//Permote passar o Corner Radius para cantos especificos de uma view
/// Font:  https://stackoverflow.com/questions/56760335/round-specific-corners-swiftui
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
///End
