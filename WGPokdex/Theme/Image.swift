//
//  Image.swift
//  WGPokdex
//
//  Created by Wilton Garcia on 04/05/22.
//

import SwiftUI
import Rswift

extension Image {
  init(_ imageResource: ImageResource) {
    self = Image(imageResource.name, bundle: imageResource.bundle)
  }
}

extension ImageResource {
  var swiftUI: Image {
    return Image(self)
  }
}

