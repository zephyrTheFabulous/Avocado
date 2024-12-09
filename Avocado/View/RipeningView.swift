  //
  //  RipeningView.swift
  //  Avocado
  //
  //  Created by Anthony on 2/11/24.
  //

import SwiftUI

struct RipeningView: View {
    //MARK: - PROPERTIES

  var ripening: Ripening

  @State private var slideInAnimation: Bool = false

    //MARK: - BODY
  var body: some View {
      VStack {
        Image(ripening.image)
          .resizable()
          .frame(width: 100, height: 100, alignment: .center)
          .clipShape(Circle())
          .background(
            Circle()
              .fill(.colorGreenLight)
              .frame(width: 110, height: 110, alignment: .center)
          )
          .background(
            Circle()
              .fill(.colorAppearanceAdaptive)
              .frame(width: 120, height: 120, alignment: .center)
          )
          .zIndex(1)
          .animation(.easeInOut(duration: 1), value: slideInAnimation)
          .offset(y: slideInAnimation ? 55:-55)
        
        VStack(alignment: .center, spacing: 10) {
            // STAGE
          VStack(alignment: .center, spacing: 0) {
            Text(ripening.stage)
              .font(.system(.largeTitle, design: .serif))
              .fontWeight(.bold)
            Text("STAGE")
              .font(.system(.body, design: .serif))
              .fontWeight(.heavy)
          }
          .foregroundStyle(.colorGreenMedium)
          .padding(.top, 65)
          .frame(width: 180)
          
            // TITLE
          Text(ripening.title)
            .font(.system(.title, design: .serif))
            .fontWeight(.bold)
            .foregroundStyle(.colorGreenMedium)
            .padding(.vertical, 12)
            .padding(.horizontal, 0)
            .frame(width: 220)
            .background(
              RoundedRectangle(cornerRadius: 12)
                .fill(
                  .linearGradient(colors: [.white, .colorGreenLight], startPoint: .top, endPoint: .bottom)
                )
            )
            .shadow(color: .colorBlackTransparentLight, radius: 6, x: 0, y: 0)
          
            // DESCRIPTION
          Spacer()
          Text(ripening.description)
            .foregroundStyle(.colorGreenDark)
            .fontWeight(.bold)
            .lineLimit(nil)
          Spacer()
          
            // RIPENESS
          Text(ripening.ripeness.uppercased())
            .foregroundStyle(.white)
            .font(.system(.callout, design: .serif, weight: .bold))
            .shadow(radius: 3)
            .padding(.vertical, 16)
            .padding(.horizontal, 0)
            .frame(width: 185)
            .background(
              RoundedRectangle(cornerRadius: 12)
                .fill(
                  .linearGradient(colors: [.colorGreenMedium, .colorGreenDark], startPoint: .top, endPoint: .bottom)
                )
            )
            .shadow(color: .colorBlackTransparentLight, radius: 6, x: 0, y: 6)
          
            // INSTRUCTION
          Text(ripening.instruction)
            .font(.footnote)
            .fontWeight(.bold)
            .foregroundStyle(.colorGreenLight)
            .lineLimit(3)
            .frame(width: 160)
          
          Spacer()
        } //: TEXT STACK
        .zIndex(0)
        .multilineTextAlignment(.center)
        .padding(.horizontal, 16)
        .frame(width: 260, height: 486, alignment: .center)
        .background(
          .linearGradient(colors: [.colorGreenLight, .colorGreenMedium], startPoint: .top, endPoint: .bottom)
        )
        .clipShape(.rect(cornerRadius: 20))
//        .overlay {
//          Circle()
//            .fill(.white)
//            .frame(width: 120, height: 120, alignment: .center)
//            .offset(y: -246)
//            .zIndex(1)
//        }
      } //: MAIN VSTACK
      .ignoresSafeArea()
      .onAppear {
        slideInAnimation.toggle()


    }
  }
}

#Preview {
  RipeningView(ripening: ripeningData[0])
}
