  //
  //  HeaderView.swift
  //  Avocado
  //
  //  Created by Anthony on 31/10/24.
  //

import SwiftUI

struct HeaderView: View {
    //MARK: - PROPERTIES

  var header: Header

  @State private var showHeadline: Bool = false

    //constant for animation effect, can be put in separate file
  var slideInAnimation: Animation {
    Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
      .speed(1)
      .delay(0.25)
  }

    //MARK: - BODY
  var body: some View {
    ZStack {
      Image(header.image)
        .resizable()
        .scaledToFit()

      HStack(alignment: .top, spacing: 0) {

        Rectangle()
          .fill(.colorGreenLight)

          // headline
        VStack(alignment: .leading, spacing: 6) {
          Text(header.headline)
            .font(.system(.title, design: .serif, weight: .bold))
            .foregroundStyle(.white)
            .shadow(radius: 3)

            // subheadline
          Text(header.subheadline)
            .font(.footnote)
            .lineLimit(2)
            .multilineTextAlignment(.leading)
            .foregroundStyle(.white)
            .shadow(radius: 3)
        }
        .padding(.vertical, 0)
        .padding(.horizontal, 20)
        .frame(width: 281, height: 105)
        .background(.colorBlackTransparentLight)
      } //: ZSTACK
      .frame(width: 285, height: 105, alignment: .center)
      .offset(x: -66, y: showHeadline ? 75:200)
      .animation(slideInAnimation, value: showHeadline)
      .onAppear {
        showHeadline = true
      }
    } //: HSTACK
    .frame(width: 480, height: 320)
  }
}

#Preview(traits: .sizeThatFitsLayout) {
  HeaderView(header: headersData[0])
}
