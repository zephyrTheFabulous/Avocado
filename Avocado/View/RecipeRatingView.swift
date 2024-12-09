//
//  RecipeRatingView.swift
//  Avocado
//
//  Created by Anthony on 1/11/24.
//

import SwiftUI

struct RecipeRatingView: View {

    //MARK: - PROPERTIES

  var recipe: Recipe

    //MARK: - BODY
  var body: some View {
    HStack(alignment: .center, spacing: 5) {
      ForEach(1...(recipe.rating), id: \.self) { _ in
        Image(systemName: "star.fill")
          .font(.body)
          .foregroundStyle(.yellow)
      }
    }
  }
}

#Preview {
  RecipeRatingView(recipe: recipesData[0])
}
