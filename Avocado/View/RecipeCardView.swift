//
//  RecipeCardView.swift
//  Avocado
//
//  Created by Anthony on 1/11/24.
//

import SwiftUI

struct RecipeCardView: View {
    //MARK: - PROPERTIES

  var recipe: Recipe
  var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)

  @State private var showModal: Bool = false

    //MARK: - BODY
    var body: some View {
      VStack(alignment: .leading, spacing: 0) {
        Image(recipe.image)
          .resizable()
          .scaledToFit()
          .overlay {
            HStack {
              Spacer()
              VStack {
                Image(systemName: "bookmark")
                  .font(.title)
                  .imageScale(.small)
                  .fontWeight(.light)
                  .foregroundStyle(.white)
                  .shadow(radius: 0.3, x: 1, y: 1)
                  .padding(20)
                Spacer()
              }
            }
          }

        VStack(alignment: .leading, spacing: 12) {
          // TITLE
          Text(recipe.title)
            .font(.system(.title, design: .serif, weight: .bold))
            .foregroundStyle(.colorGreenMedium)
            .lineLimit(1)
          // HEADLINE
          Text(recipe.headline)
            .font(.system(.body, design: .serif))
            .italic()
            .foregroundStyle(.gray)

          // RATING
          RecipeRatingView(recipe: recipe)

          // COOKING
          RecipeCookingView(recipe: recipe)

        } //: LOWER VSTACK
        .padding()
        .padding(.bottom, 12)
      } //: MAIN VSTACK
      .background(.white)
      .clipShape(.rect(cornerRadius: 12))
      .shadow(color: .colorBlackTransparentLight, radius: 8, x: 0, y: 0)
      .onTapGesture {
        hapticImpact.impactOccurred()
        showModal = true
      }
      .sheet(isPresented: $showModal) {
        RecipeDetailView(recipe: recipe)
      }
    }
}

#Preview {
  RecipeCardView(recipe: recipesData[2])
}
