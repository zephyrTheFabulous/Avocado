  //
  //  FactsView.swift
  //  Avocado
  //
  //  Created by Anthony on 1/11/24.
  //

import SwiftUI

struct FactsView: View {
    //MARK: - PROPERTIES

  var fact: Fact


    //MARK: - BODY
  var body: some View {
    ZStack {

        // MAIN TEXT
      Text(fact.content)
        .padding(.leading, 55)
        .padding(.trailing, 10)
        .padding(.vertical, 3)
        .frame(width: 300, height: 135, alignment: .center)
        .background(
          .linearGradient(colors: [.colorGreenMedium, .colorGreenLight], startPoint: .leading, endPoint: .trailing)
        )
        .shadow(radius: 0.3, x: 1, y: 1)
        .lineLimit(6)
        .multilineTextAlignment(.leading)
        .font(.footnote)
        .foregroundStyle(.white)
        .clipShape(.rect(cornerRadius: 12))

        // LEFT SIDE IMAGE
      Image(fact.image)
        .resizable()
        .frame(width: 66, height: 66, alignment: .center)
        .clipShape(Circle())
        .background(
          Circle()
            .fill(.white)
            .frame(width: 74, height: 74, alignment: .center)
            .background(
              Circle()
                .fill(
                  .linearGradient(colors: [.colorGreenMedium, .colorGreenLight], startPoint: .trailing, endPoint: .leading)
                )
                .frame(width: 82, height: 82, alignment: .center)
            )
        )
        .background(
          Circle()
            .fill(.colorAppearanceAdaptive)
            .frame(width: 90, height: 90, alignment: .center)
        )
        .offset(x: -150)
    }
  }
}

#Preview {
  FactsView(fact: factsData[0])
}
