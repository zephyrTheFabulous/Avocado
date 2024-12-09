  //
  //  RecipeDetailView.swift
  //  Avocado
  //
  //  Created by Anthony on 1/11/24.
  //

import SwiftUI

struct RecipeDetailView: View {
    //MARK: - PROPERTIES

  var recipe: Recipe
  @State private var pulsate: Bool = false

  @Environment(\.dismiss) var dismiss

    //MARK: - BODY
  var body: some View {
    ScrollView {
      VStack(alignment: .center, spacing: 0) {
        Image(recipe.image)
          .resizable()
          .scaledToFit()

        Group {
            // TITLE
          Text(recipe.title)
            .font(.system(.largeTitle, design: .serif))
            .fontWeight(.bold)
            .foregroundStyle(.colorGreenAdaptive)
            .multilineTextAlignment(.center)
            .padding(.top, 10)

            // RATINGS
          RecipeRatingView(recipe: recipe)

            // COOKING
          RecipeCookingView(recipe: recipe)

            // INGREDIENTS
          Text("Ingredients")
            .fontWeight(.bold)
            .modifier(TitleModifier())

          // left column
          VStack(alignment: .leading, spacing: 6) {
            ForEach(recipe.ingredients, id: \.self) { item in
              VStack(alignment: .leading, spacing: 5) {
                Text(item)
                  .font(.footnote)
                  .multilineTextAlignment(.leading)
                Divider()
              }
            }
          }


            //INSTRUCTIONS
          Text("Instructions")
            .fontWeight(.bold)
            .modifier(TitleModifier())

          ForEach(recipe.instructions, id: \.self) { item in
            VStack(alignment: .center, spacing: 5) {
              Image(systemName: "chevron.down.circle")
                .resizable()
                .frame(width: 42, height: 42, alignment: .center)
                .imageScale(.large)
                .font(.title)
                .fontWeight(.ultraLight)
                .foregroundStyle(.colorGreenAdaptive)

              Text(item)
                .lineLimit(nil)
                .multilineTextAlignment(.leading)
                .font(.system(.body, design: .serif))
                .frame(minHeight: 100)
            }
          }
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 12)
      }
    } //: SCROLL
    .ignoresSafeArea()
    .overlay {
      HStack {
        Spacer()
        VStack {
          Button {
            dismiss()
          } label: {
            Image(systemName: "chevron.down.circle.fill")
              .font(.title)
              .foregroundStyle(.white)
              .shadow(radius: 0.3, x: 1, y: 1)
              .opacity(pulsate ? 1:0.6)
              .scaleEffect(pulsate ? 1.2:0.8, anchor: .center)
              .animation(.easeInOut(duration: 1.5).repeatForever(), value: pulsate)
          }
          .padding(20)
          Spacer()
        }
      }
    } //: CLOSE BUTTON
    .onAppear() {
      pulsate.toggle()
    }
  }
}

#Preview {
  RecipeDetailView(recipe: recipesData[0])
}
