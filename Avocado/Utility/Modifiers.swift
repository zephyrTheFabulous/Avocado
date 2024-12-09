//
//  Modifiers.swift
//  Avocado
//
//  Created by Anthony on 31/10/24.
//

import SwiftUI

struct IconModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .frame(width: 42, height: 42, alignment: .center)
  }
}

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.system(.title, design: .serif))
      .fontWeight(.bold)
      .foregroundStyle(.colorGreenAdaptive)
      .padding(8)
  }
}
