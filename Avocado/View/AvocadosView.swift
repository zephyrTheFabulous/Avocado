//
//  AvocadosView.swift
//  Avocado
//
//  Created by Anthony on 31/10/24.
//

import SwiftUI

struct AvocadosView: View {
    //MARK: - PROPERTIES

  @State private var pulsateAnimation: Bool = false

    //MARK: - BODY
    var body: some View {
      VStack {
        Spacer()

        Image(.avocado)
          .resizable()
          .aspectRatio(contentMode: .fit) // same as .scaledToFit()
          .frame(width: 240, height: 240)
          .shadow(color: .colorBlackTransparentDark, radius: 12, x: 0, y: 8)
          .scaleEffect(pulsateAnimation ? 1:0.8)
          .opacity(pulsateAnimation ? 1:0.85)
          .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsateAnimation)

        VStack {
          Text("Avocados".uppercased())
            .font(.system(size: 42, weight: .bold, design: .serif)) // New York font
            .foregroundStyle(.white)
            .padding()
            .shadow(color: .colorBlackTransparentDark, radius: 4, x: 0, y: 4)

          Text("Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!")
            .font(.system(.headline, design: .serif))
            .foregroundStyle(.colorGreenLight)
            .multilineTextAlignment(.center)
            .lineLimit(nil)
            .lineSpacing(8)
            .frame(maxWidth: 640, minHeight: 120) // for iPad
        } //: VSTACK
        .padding()

        Spacer()
      } //: VSTACK
      .background(
        Image(.background)
          .resizable()
          .aspectRatio(contentMode: .fill)
      )
      .ignoresSafeArea(.container, edges: .top)
      .onAppear {
        pulsateAnimation.toggle()
      }
    }
}

#Preview {
    AvocadosView()
    .environment(\.colorScheme, .dark) // same as .preferredColorScheme?
}
