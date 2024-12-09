  //
  //  DishesView.swift
  //  Avocado
  //
  //  Created by Anthony on 31/10/24.
  //

import SwiftUI

struct DishesView: View {
    //MARK: - PROPERTIES



    //MARK: - BODY
  var body: some View {
    HStack(alignment: .center, spacing: 4) {
        // LEFT STACK
      VStack(alignment: .leading, spacing: 4) {
        HStack {
          Image(.iconToasts)
            .resizable()
            .modifier(IconModifier())
          Spacer()
          Text("Toasts")
        }
        Divider()
        HStack {
          Image(.iconTacos)
            .resizable()
            .modifier(IconModifier())
          Spacer()
          Text("Tacos")
        }
        Divider()
        HStack {
          Image(.iconSalads)
            .resizable()
            .modifier(IconModifier())
          Spacer()
          Text("Salads")
        }
        Divider()
        HStack {
          Image(.iconHalfavo)
            .resizable()
            .modifier(IconModifier())
          Spacer()
          Text("Halfavo")
        }
      }

        // CENTER STACK
      VStack(alignment: .center, spacing: 16){
        HStack {
          Divider()
        }
        Image(systemName: "heart.circle")
          .imageScale(.large)
          .font(.title)
          .fontWeight(.ultraLight)
        HStack {
          Divider()
        }
      }

        // RIGHT STACK
      VStack(alignment: .trailing, spacing: 4) {
        HStack {
          Text("Guacamole")
          Spacer()
          Image(.iconGuacamole)
            .resizable()
            .modifier(IconModifier())
        }
        Divider()
        HStack {
          Text("Sandwiches")
          Spacer()
          Image(.iconSandwiches)
            .resizable()
            .modifier(IconModifier())
        }
        Divider()
        HStack {
          Text("Soup")
          Spacer()
          Image(.iconSoup)
            .resizable()
            .modifier(IconModifier())
        }
        Divider()
        HStack {
          Text("Smoothie")
          Spacer()
          Image(.iconSmoothies)
            .resizable()
            .modifier(IconModifier())
        }
      }
    } //: MAIN HSTACK
    .font(.system(.callout, design: .serif))
    .foregroundStyle(.gray)
    .padding(.horizontal, 16)
    .frame(maxHeight: 220)
  }
}

#Preview {
  DishesView()
}
